local colors = require("matteblack.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Treesitter highlight groups
  -- Comments
  vim.api.nvim_set_hl(0, "@comment", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.red, italic = true })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.orange, italic = true })
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "@comment.note", { fg = p.fg2, italic = true })

  -- Constants
  vim.api.nvim_set_hl(0, "@constant", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.cyan, bold = true })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.cyan })

  -- Strings
  vim.api.nvim_set_hl(0, "@string", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.orange })

  -- Characters
  vim.api.nvim_set_hl(0, "@character", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.orange })

  -- Numbers
  vim.api.nvim_set_hl(0, "@number", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@number.float", { fg = p.orange })

  -- Booleans
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.orange })

  -- Functions
  vim.api.nvim_set_hl(0, "@function", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@method", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.pink })

  -- Variables
  vim.api.nvim_set_hl(0, "@variable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.red, italic = true })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.pink, italic = true })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.cyan })

  -- Properties
  vim.api.nvim_set_hl(0, "@property", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "@field", { fg = p.cyan })

  -- Types
  vim.api.nvim_set_hl(0, "@type", { fg = p.pink })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.pink, bold = true })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.pink })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.magenta })

  -- Keywords
  vim.api.nvim_set_hl(0, "@keyword", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.magenta, bold = true })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.red })
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.magenta })

  -- Operators
  vim.api.nvim_set_hl(0, "@operator", { fg = p.fg1 })

  -- Punctuation
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.magenta })

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.gray, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.pink })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.orange })

  -- Tags (HTML/XML)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.gray })

  -- Attributes
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.yellow })

  -- Labels
  vim.api.nvim_set_hl(0, "@label", { fg = p.magenta })

  -- Namespace
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.pink })
  vim.api.nvim_set_hl(0, "@module", { fg = p.pink })

  -- Preproc
  vim.api.nvim_set_hl(0, "@preproc", { fg = p.magenta })

  -- Include
  vim.api.nvim_set_hl(0, "@include", { fg = p.magenta })

  -- Define
  vim.api.nvim_set_hl(0, "@define", { fg = p.magenta })

  -- Conditional
  vim.api.nvim_set_hl(0, "@conditional", { fg = p.magenta })

  -- Repeat
  vim.api.nvim_set_hl(0, "@repeat", { fg = p.magenta })

  -- Exception
  vim.api.nvim_set_hl(0, "@exception", { fg = p.red })

  -- Special characters
  vim.api.nvim_set_hl(0, "@character.printf", { fg = p.orange })

  -- Diff
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.red })
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.yellow })

  -- Language-specific
  -- Lua
  vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.red, italic = true })

  -- Python
  vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = p.red, italic = true })

  -- JavaScript/TypeScript
  vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.red, italic = true })
end

return M
