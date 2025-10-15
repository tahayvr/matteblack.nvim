---@diagnostic disable: undefined-global

local colors = require("matteblack.colors")

local M = {}

local function set(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.apply()
  local p = colors.palette

  local highlights = {
    -- Comments
    ["@comment"] = { fg = p.comment, italic = true },
    ["@comment.documentation"] = { fg = p.comment, italic = true },
    ["@comment.error"] = { fg = p.crimson, italic = true },
    ["@comment.warning"] = { fg = p.amber, italic = true },
    ["@comment.todo"] = { fg = p.yellow, italic = true },
    ["@comment.note"] = { fg = p.comment, italic = true },
    ["@comment.hint"] = { fg = p.comment, italic = true },
    ["@comment.hack"] = { fg = p.amber, italic = true },
    ["@comment.fixme"] = { fg = p.crimson, bold = true },
    ["@comment.xxx"] = { fg = p.purple, bold = true },

    -- Constants
    ["@constant"] = { fg = p.amber },
    ["@constant.builtin"] = { fg = p.amber },
    ["@constant.macro"] = { fg = p.yellow },

    -- Strings
    ["@string"] = { fg = p.fg1 },
    ["@string.documentation"] = { fg = p.fg1 },
    ["@string.regex"] = { fg = p.amber },
    ["@string.escape"] = { fg = p.gold },
    ["@string.special"] = { fg = p.gold },
    ["@string.special.symbol"] = { fg = p.gold },
    ["@string.special.path"] = { fg = p.gold },
    ["@string.special.url"] = { fg = p.orange, italic = true },

    -- Characters & numbers
    ["@character"] = { fg = p.gold },
    ["@character.special"] = { fg = p.gold },
    ["@number"] = { fg = p.gold },
    ["@number.float"] = { fg = p.gold },
    ["@boolean"] = { fg = p.teal },

    -- Functions
    ["@function"] = { fg = p.crimson },
    ["@function.builtin"] = { fg = p.amber },
    ["@function.call"] = { fg = p.orange },
    ["@function.macro"] = { fg = p.yellow },
    ["@function.method"] = { fg = p.orange },
    ["@function.method.call"] = { fg = p.orange },
    ["@function.decorator"] = { fg = p.amber },
    ["@constructor"] = { fg = p.yellow },

    -- Variables
    ["@variable"] = { fg = p.amber },
    ["@variable.builtin"] = { fg = p.blue },
    ["@variable.parameter"] = { fg = p.fg2 },
    ["@variable.member"] = { fg = p.fg1 },
    ["@variable.global"] = { fg = p.amber },
    ["@variable.special"] = { fg = p.blue, italic = true },

    -- Fields & properties
    ["@field"] = { fg = p.orange },
    ["@property"] = { fg = p.orange },
    ["@label"] = { fg = p.green },

    -- Types & namespaces
    ["@type"] = { fg = p.yellow },
    ["@type.builtin"] = { fg = p.orange, italic = true },
    ["@type.definition"] = { fg = p.yellow },
    ["@type.qualifier"] = { fg = p.orange },
    ["@type.interface"] = { fg = p.yellow, italic = true },
    ["@type.parameter"] = { fg = p.yellow, italic = true },
    ["@namespace"] = { fg = p.ochre, italic = true },
    ["@module"] = { fg = p.ochre, italic = true },

    -- Keywords & operators
    ["@keyword"] = { fg = p.green },
    ["@keyword.function"] = { fg = p.green },
    ["@keyword.operator"] = { fg = p.fg2 },
    ["@keyword.return"] = { fg = p.green },
    ["@keyword.import"] = { fg = p.green },
    ["@keyword.conditional"] = { fg = p.green },
    ["@keyword.repeat"] = { fg = p.green },
    ["@keyword.exception"] = { fg = p.green },
    ["@keyword.directive"] = { fg = p.blue },
    ["@keyword.directive.define"] = { fg = p.yellow },
    ["@keyword.modifier"] = { fg = p.green },
    ["@operator"] = { fg = p.fg2 },

    -- Punctuation
    ["@punctuation"] = { fg = p.fg3 },
    ["@punctuation.delimiter"] = { fg = p.fg3 },
    ["@punctuation.bracket"] = { fg = p.fg3 },
    ["@punctuation.special"] = { fg = p.blue },
    ["@punctuation.special.symbol"] = { fg = p.blue },

    -- Decorators & attributes
    ["@attribute"] = { fg = p.amber, italic = true },
    ["@decorator"] = { fg = p.amber },

    -- Tags
    ["@tag"] = { fg = p.green },
    ["@tag.attribute"] = { fg = p.amber, italic = true },
    ["@tag.delimiter"] = { fg = p.fg2 },

    -- Markup
    ["@markup.strong"] = { fg = p.fg1, bold = true },
    ["@markup.italic"] = { fg = p.fg1, italic = true },
    ["@markup.heading"] = { fg = p.amber, bold = true },
    ["@markup.link"] = { fg = p.orange, underline = true },
    ["@markup.link.url"] = { fg = p.orange, underline = true },
    ["@markup.link.label"] = { fg = p.orange },
    ["@markup.list"] = { fg = p.orange },
    ["@markup.list.checked"] = { fg = p.teal },
    ["@markup.list.unchecked"] = { fg = p.orange },
    ["@markup.quote"] = { fg = p.fg3, italic = true },
    ["@markup.raw"] = { fg = p.fg1 },
    ["@markup.raw.block"] = { fg = p.fg1 },
    ["@markup.math"] = { fg = p.gold },
    ["@markup.underline"] = { fg = p.orange, underline = true },

    -- Diff / SCM
    ["@diff.plus"] = { fg = p.teal },
    ["@diff.minus"] = { fg = p.crimson },
    ["@diff.delta"] = { fg = p.orange },

    -- Preprocessor
  ["@preproc"] = { fg = p.yellow },
  ["@include"] = { fg = p.blue },
  ["@define"] = { fg = p.yellow },
    ["@conditional"] = { fg = p.green },
    ["@repeat"] = { fg = p.green },
    ["@exception"] = { fg = p.green },

    -- Special cases
    ["@character.printf"] = { fg = p.gold },
  }

  for group, spec in pairs(highlights) do
    set(group, spec)
  end

  -- Language specific overrides
  set("@function.builtin.lua", { fg = p.amber })
  set("@variable.builtin.lua", { fg = p.blue, italic = true })
  set("@function.builtin.python", { fg = p.amber })
  set("@variable.builtin.python", { fg = p.blue, italic = true })
  set("@function.builtin.javascript", { fg = p.amber })
  set("@variable.builtin.javascript", { fg = p.blue, italic = true })
end

return M
