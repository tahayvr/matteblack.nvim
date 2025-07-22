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

  -- extended palette (warm analogous colors)
  yellow  = "#FBBF24", -- Bright warm yellow, analogous to orange
  pink    = "#F87171", -- Warm coral pink, between red and orange
  magenta = "#DC2626", -- Deep red-magenta, darker than main red
  green   = "#A3A3A3", -- Neutral gray instead of green to maintain minimal theme
  blue    = "#737373", -- Neutral gray instead of blue to maintain minimal theme
  cyan    = "#D97706", -- Warm amber, analogous to orange
  gray    = "#5C6370", -- Keep existing gray
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
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 }) -- Cursor line background
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.orange }) -- Normal cursor (block)
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 }) -- Cursor column background
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.cyan }) -- Warm amber for constants
  vim.api.nvim_set_hl(0, "String", { fg = p.yellow }) -- Bright yellow for strings
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.fg2 }) -- Neutral foreground for identifiers
  vim.api.nvim_set_hl(0, "Statement", { fg = p.red }) -- Keep red for statements
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.orange }) -- Orange for preprocessor
  vim.api.nvim_set_hl(0, "Type", { fg = p.pink }) -- Warm coral pink for types
  vim.api.nvim_set_hl(0, "Special", { fg = p.magenta }) -- Deep red for special chars
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.cyan, underline = true }) -- Warm amber underlines
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg1, bold = true }) -- Bright yellow todos

  -- Apply Treesitter theming
  require("matteblack.treesitter").apply()

  -- Apply Snacks.nvim theming
  require("matteblack.snacks").apply()

  -- Apply todo-comments.nvim theming
  require("matteblack.todo-comments").apply()
end

return M 