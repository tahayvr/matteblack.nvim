local M = {}

M.palette = {
  -- shades of gray
  bg0      = "#0D0D0D", -- Darkest black
  bg1      = "#121212", -- Main background 
  bg2      = "#1E1E1E",
  bg3      = "#2C2C2C",
  bg4      = "#333333", 
  fg0      = "#FFFFFF", -- Full white
  fg1      = "#EAEAEA", -- Main foreground
  fg2      = "#BEBEBE",
  fg3      = "#8A8A8D",
  -- selection
  selbg    = "#262626",
  selfg    = "#EAEAEA",

  comment  = "#8A8A8D",

  -- accent colors
  red     = "#B91C1C",
  orange  = "#F59E0B",

  -- extended palette
  yellow  = "#E5C07B",
  pink    = "#E06C75",
  magenta = "#C678DD",
  green   = "#98C379",
  blue    = "#61AFEF",
  cyan    = "#56B6C2",
  gray    = "#5C6370",
}

function M.apply()
  local p = M.palette
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "matteblack"

  -- Basic highlight groups
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "String", { fg = p.green })
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.blue })
  vim.api.nvim_set_hl(0, "Statement", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Type", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Special", { fg = p.red })
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg, bold = true })

  -- Treesitter highlight groups
  -- Comments
  vim.api.nvim_set_hl(0, "@comment", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.red, italic = true })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.orange, italic = true })
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "@comment.note", { fg = p.blue, italic = true })

  -- Constants
  vim.api.nvim_set_hl(0, "@constant", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.cyan, bold = true })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.cyan })

  -- Strings
  vim.api.nvim_set_hl(0, "@string", { fg = p.green })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.green })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.orange })

  -- Characters
  vim.api.nvim_set_hl(0, "@character", { fg = p.green })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.orange })

  -- Numbers
  vim.api.nvim_set_hl(0, "@number", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@number.float", { fg = p.orange })

  -- Booleans
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.orange })

  -- Functions
  vim.api.nvim_set_hl(0, "@function", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@method", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.yellow })

  -- Variables
  vim.api.nvim_set_hl(0, "@variable", { fg = p.fg })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.red, italic = true })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.pink, italic = true })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.cyan })

  -- Properties
  vim.api.nvim_set_hl(0, "@property", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "@field", { fg = p.cyan })

  -- Types
  vim.api.nvim_set_hl(0, "@type", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.yellow })
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
  vim.api.nvim_set_hl(0, "@operator", { fg = p.fg })

  -- Punctuation
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.magenta })

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.gray, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.green })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.green })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.green })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.orange })

  -- Tags (HTML/XML)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.gray })

  -- Attributes
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.yellow })

  -- Labels
  vim.api.nvim_set_hl(0, "@label", { fg = p.magenta })

  -- Namespace
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@module", { fg = p.yellow })

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
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.green })
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.red })
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.blue })

  -- Language-specific
  -- Lua
  vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.red, italic = true })

  -- Python
  vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = p.red, italic = true })

  -- JavaScript/TypeScript
  vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.red, italic = true })

  -- Apply Snacks.nvim theming
  require("matteblack.snacks").apply()

  -- Add more highlight groups
end

return M 