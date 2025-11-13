---@diagnostic disable: undefined-global

local M = {}

local function set(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.apply(c, opts)
  -- Apply style configurations
  local comment_style = vim.tbl_extend("force", { fg = c.comment }, opts.styles.comments or {})
  local keyword_style = vim.tbl_extend("force", { fg = c.green }, opts.styles.keywords or {})
  local function_style = vim.tbl_extend("force", { fg = c.crimson }, opts.styles.functions or {})
  local variable_style = vim.tbl_extend("force", { fg = c.amber }, opts.styles.variables or {})

  local highlights = {
    -- Comments
    ["@comment"] = comment_style,
    ["@comment.documentation"] = comment_style,
    ["@comment.error"] = vim.tbl_extend("force", comment_style, { fg = c.crimson }),
    ["@comment.warning"] = vim.tbl_extend("force", comment_style, { fg = c.amber }),
    ["@comment.todo"] = vim.tbl_extend("force", comment_style, { fg = c.yellow }),
    ["@comment.note"] = comment_style,
    ["@comment.hint"] = comment_style,
    ["@comment.hack"] = vim.tbl_extend("force", comment_style, { fg = c.amber }),
    ["@comment.fixme"] = { fg = c.crimson, bold = true },
    ["@comment.xxx"] = { fg = c.purple, bold = true },

    -- Constants
    ["@constant"] = { fg = c.amber },
    ["@constant.builtin"] = { fg = c.amber },
    ["@constant.macro"] = { fg = c.yellow },

    -- Strings
    ["@string"] = { fg = c.fg1 },
    ["@string.documentation"] = { fg = c.fg1 },
    ["@string.regex"] = { fg = c.amber },
    ["@string.escape"] = { fg = c.gold },
    ["@string.special"] = { fg = c.gold },
    ["@string.special.symbol"] = { fg = c.gold },
    ["@string.special.path"] = { fg = c.gold },
    ["@string.special.url"] = { fg = c.orange, italic = true },

    -- Characters & numbers
    ["@character"] = { fg = c.gold },
    ["@character.special"] = { fg = c.gold },
    ["@number"] = { fg = c.gold },
    ["@number.float"] = { fg = c.gold },
    ["@boolean"] = { fg = c.teal },

    -- Functions
    ["@function"] = function_style,
    ["@function.builtin"] = { fg = c.amber },
    ["@function.call"] = { fg = c.orange },
    ["@function.macro"] = { fg = c.yellow },
    ["@function.method"] = { fg = c.orange },
    ["@function.method.call"] = { fg = c.orange },
    ["@function.decorator"] = { fg = c.amber },
    ["@constructor"] = { fg = c.yellow },

    -- Variables
    ["@variable"] = variable_style,
    ["@variable.builtin"] = { fg = c.blue },
    ["@variable.parameter"] = { fg = c.fg2 },
    ["@variable.member"] = { fg = c.fg1 },
    ["@variable.global"] = variable_style,
    ["@variable.special"] = { fg = c.blue, italic = true },

    -- Fields & properties
    ["@field"] = { fg = c.orange },
    ["@property"] = { fg = c.orange },
    ["@label"] = { fg = c.green },

    -- Types & namespaces
    ["@type"] = { fg = c.yellow },
    ["@type.builtin"] = { fg = c.orange, italic = true },
    ["@type.definition"] = { fg = c.yellow },
    ["@type.qualifier"] = { fg = c.orange },
    ["@type.interface"] = { fg = c.yellow, italic = true },
    ["@type.parameter"] = { fg = c.yellow, italic = true },
    ["@namespace"] = { fg = c.ochre, italic = true },
    ["@module"] = { fg = c.ochre, italic = true },

    -- Keywords & operators
    ["@keyword"] = keyword_style,
    ["@keyword.function"] = keyword_style,
    ["@keyword.operator"] = { fg = c.fg2 },
    ["@keyword.return"] = keyword_style,
    ["@keyword.import"] = keyword_style,
    ["@keyword.conditional"] = keyword_style,
    ["@keyword.repeat"] = keyword_style,
    ["@keyword.exception"] = keyword_style,
    ["@keyword.directive"] = { fg = c.blue },
    ["@keyword.directive.define"] = { fg = c.yellow },
    ["@keyword.modifier"] = keyword_style,
    ["@operator"] = { fg = c.fg2 },

    -- Punctuation
    ["@punctuation"] = { fg = c.fg3 },
    ["@punctuation.delimiter"] = { fg = c.fg3 },
    ["@punctuation.bracket"] = { fg = c.fg3 },
    ["@punctuation.special"] = { fg = c.blue },
    ["@punctuation.special.symbol"] = { fg = c.blue },

    -- Decorators & attributes
    ["@attribute"] = { fg = c.amber, italic = true },
    ["@decorator"] = { fg = c.amber },

    -- Tags
    ["@tag"] = { fg = c.green },
    ["@tag.attribute"] = { fg = c.amber, italic = true },
    ["@tag.delimiter"] = { fg = c.fg2 },

    -- Markup
    ["@markuc.strong"] = { fg = c.fg1, bold = true },
    ["@markuc.italic"] = { fg = c.fg1, italic = true },
    ["@markuc.heading"] = { fg = c.amber, bold = true },
    ["@markuc.link"] = { fg = c.orange, underline = true },
    ["@markuc.link.url"] = { fg = c.orange, underline = true },
    ["@markuc.link.label"] = { fg = c.orange },
    ["@markuc.list"] = { fg = c.orange },
    ["@markuc.list.checked"] = { fg = c.teal },
    ["@markuc.list.unchecked"] = { fg = c.orange },
    ["@markuc.quote"] = { fg = c.fg3, italic = true },
    ["@markuc.raw"] = { fg = c.fg1 },
    ["@markuc.raw.block"] = { fg = c.fg1 },
    ["@markuc.math"] = { fg = c.gold },
    ["@markuc.underline"] = { fg = c.orange, underline = true },

    -- Diff / SCM
    ["@diff.plus"] = { fg = c.teal },
    ["@diff.minus"] = { fg = c.crimson },
    ["@diff.delta"] = { fg = c.orange },

    -- Preprocessor
  ["@preproc"] = { fg = c.yellow },
  ["@include"] = { fg = c.blue },
  ["@define"] = { fg = c.yellow },
    ["@conditional"] = { fg = c.green },
    ["@repeat"] = { fg = c.green },
    ["@exception"] = { fg = c.green },

    -- Special cases
    ["@character.printf"] = { fg = c.gold },
  }

  for group, spec in pairs(highlights) do
    set(group, spec)
  end

  -- Language specific overrides
  set("@function.builtin.lua", { fg = c.amber })
  set("@variable.builtin.lua", { fg = c.blue, italic = true })
  set("@function.builtin.python", { fg = c.amber })
  set("@variable.builtin.python", { fg = c.blue, italic = true })
  set("@function.builtin.javascript", { fg = c.amber })
  set("@variable.builtin.javascript", { fg = c.blue, italic = true })
end

return M
