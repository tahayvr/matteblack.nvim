local util = require("matteblack.util")

local M = {}

---@alias PygmentsHighlight { fg?: string, bg?: string, style?: { italic?: boolean, bold?: boolean } }
---@alias PygmentsTokens table<string, table<string, PygmentsHighlight>>

---@param colors table
---@return PygmentsTokens
local function get_tokens(colors)
  -- Table is nested for easier import generation:
  --   - Top-level keys (e.g., "Keyword", "Name") are the base token modules used for Python imports.
  --   - Inner keys (e.g., "Keyword", "Keyword.Constant") are the full Pygments token names mapping to
  --     their style definitions. The base token style (e.g., for "Keyword") is defined under the key
  --     matching the top-level key.
  --
  -- All standard tokens are defined, even if the styles are empty and will fall back to the base
  -- default token styles.
  --
  -- Reference
  --   - Docs: https://pygments.org/docs/tokens/
  --   - Standard token list: https://github.com/pygments/pygments/blob/edef94d66c2d70f05a86ac6098a69ab253b8d946/pygments/token.py#L120-L214
  return {
    Token = {
      Token = { fg = colors.fg },
    },
    Keyword = {
      Keyword = { fg = colors.green },
      ["Keyword.Constant"] = { fg = colors.amber },
      ["Keyword.Declaration"] = { fg = colors.green },
      ["Keyword.Namespace"] = { fg = colors.cyan },
      ["Keyword.Pseudo"] = { fg = colors.green },
      ["Keyword.Reserved"] = {},
      ["Keyword.Type"] = { fg = colors.yellow },
    },
    Name = {
      Name = {},
      ["Name.Attribute"] = { fg = colors.fg },
      ["Name.Builtin"] = { fg = colors.yellow },
      ["Name.BuiltinPseudo"] = { fg = colors.crimson },
      ["Name.Class"] = { fg = colors.yellow },
      ["Name.Constant"] = { fg = colors.amber },
      ["Name.Decorator"] = { fg = colors.orange },
      ["Name.Entity"] = { fg = colors.yellow },
      ["Name.Exception"] = { fg = colors.crimson },
      ["Name.Function"] = { fg = colors.crimson },
      ["Name.Function.Magic"] = { fg = colors.crimson },
      ["Name.Label"] = { fg = colors.blue },
      ["Name.Namespace"] = { fg = colors.blue },
      ["Name.Other"] = {},
      ["Name.Property"] = { fg = colors.fg },
      ["Name.Tag"] = { fg = colors.green },
      ["Name.Variable"] = { fg = colors.amber },
      ["Name.Variable.Class"] = { fg = colors.amber },
      ["Name.Variable.Global"] = { fg = colors.crimson },
      ["Name.Variable.Instance"] = { fg = colors.amber },
      ["Name.Variable.Magic"] = { fg = colors.crimson },
    },
    Literal = {
      Literal = { fg = colors.amber },
      ["Literal.Date"] = {},
    },
    String = {
      String = { fg = colors.fg },
      ["String.Affix"] = { fg = colors.green },
      ["String.Backtick"] = {},
      ["String.Char"] = {},
      ["String.Delimiter"] = { fg = colors.fg2 },
      ["String.Doc"] = { fg = colors.comment },
      ["String.Double"] = {},
      ["String.Escape"] = { fg = colors.gold },
      ["String.Heredoc"] = {},
      ["String.Interpol"] = { fg = colors.amber },
      ["String.Other"] = {},
      ["String.Regex"] = { fg = colors.blue },
      ["String.Single"] = {},
      ["String.Symbol"] = { fg = colors.amber },
    },
    Number = {
      Number = { fg = colors.gold },
      ["Number.Bin"] = {},
      ["Number.Float"] = {},
      ["Number.Hex"] = {},
      ["Number.Integer"] = {},
      ["Number.Integer.Long"] = {},
      ["Number.Oct"] = {},
    },
    Operator = {
      Operator = { fg = colors.fg2 },
      ["Operator.Word"] = {},
    },
    Punctuation = {
      Punctuation = { fg = colors.fg2 },
      ["Punctuation.Marker"] = { fg = colors.fg2 },
    },
    Comment = {
      Comment = { fg = colors.comment, style = { italic = true } },
      ["Comment.Hashbang"] = { fg = colors.comment },
      ["Comment.Multiline"] = {},
      ["Comment.Preproc"] = { fg = colors.cyan },
      ["Comment.PreprocFile"] = { fg = colors.fg },
      ["Comment.Single"] = {},
      ["Comment.Special"] = { fg = colors.yellow },
    },
    Generic = {
      Generic = {},
      ["Generic.Deleted"] = { fg = colors.crimson },
      ["Generic.Emph"] = { style = { italic = true } },
      ["Generic.Error"] = { fg = colors.crimson },
      ["Generic.Heading"] = { fg = colors.blue, style = { bold = true } },
      ["Generic.Inserted"] = { fg = colors.teal },
      ["Generic.Output"] = { fg = colors.fg2 },
      ["Generic.Prompt"] = { fg = colors.yellow },
      ["Generic.Strong"] = { style = { bold = true } },
      ["Generic.EmphStrong"] = { style = { bold = true, italic = true } },
      ["Generic.Subheading"] = { fg = colors.yellow },
      ["Generic.Traceback"] = { fg = colors.crimson },
    },
  }
end

---@param tokens PygmentsTokens
---@return string
local function get_imports(tokens)
  local token_types = vim.tbl_keys(tokens)
  table.sort(token_types)

  local imports = {}
  for _, token_type in pairs(token_types) do
    table.insert(imports, "from pygments.token import " .. token_type)
  end

  return table.concat(imports, "\n") .. "\n"
end

---@param tokens PygmentsTokens
---@return string
local function get_styles(tokens)
  local style_entries = {}

  for _, token_details in pairs(tokens) do
    for token_name, token_def in pairs(token_details) do
      local parts = {}

      local styles = token_def.style or {}
      if styles.italic then
        table.insert(parts, "italic")
      end
      if styles.bold then
        table.insert(parts, "bold")
      end

      if token_def.fg then
        table.insert(parts, tostring(token_def.fg))
      end

      if token_def.bg then
        table.insert(parts, "bg:" .. tostring(token_def.bg))
      end

      local style = table.concat(parts, " ")
      if style ~= "" then
        table.insert(style_entries, string.format("%s%s: '%s',", string.rep(" ", 8), token_name, style))
      end
    end
  end

  table.sort(style_entries)
  return table.concat(style_entries, "\n") .. "\n"
end

---@param colors table
function M.generate(colors)
  local tokens = get_tokens(colors)
  local imports = get_imports(tokens)
  local styles = get_styles(tokens)

  colors["_class_name"] = "matteblack"
  colors["_name"] = "matteblack"

  local pygments = util.template([[
from pygments.style import Style
]] .. imports .. [[
class ${_class_name}(Style):
    name = '${_name}'
    background_color = "${bg}"
    highlight_color = "${bg2}"
    line_number_color = "${comment}"
    line_number_background_color = "${bg}"
    styles = {
]] .. styles .. [[
    }
]], colors)

  return pygments
end

return M
