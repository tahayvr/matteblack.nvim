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
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "String", { fg = p.green })
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.blue })
  vim.api.nvim_set_hl(0, "Statement", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Type", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Special", { fg = p.red })
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg1, bold = true })

  -- Apply Treesitter theming
  require("matteblack.treesitter").apply()

  -- Apply Snacks.nvim theming
  require("matteblack.snacks").apply()
end

return M 