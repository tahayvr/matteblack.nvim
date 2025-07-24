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
  amber   = "#D97706", -- Warm amber, analogous to orange
  pink    = "#F87171", -- Warm coral pink, between red and orange
  magenta = "#DC2626", -- Deep red-magenta, darker than main red
  gray    = "#5C6370",
  gray1   = "#A3A3A3",
  gray2   = "#737373",
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
  vim.api.nvim_set_hl(0, "Constant", { fg = p.amber }) -- Warm amber for constants
  vim.api.nvim_set_hl(0, "String", { fg = p.fg1 }) -- Bright gray for strings
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.fg2 }) -- Neutral foreground for identifiers
  vim.api.nvim_set_hl(0, "Statement", { fg = p.red }) -- Keep red for statements
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.orange }) -- Orange for preprocessor
  vim.api.nvim_set_hl(0, "Type", { fg = p.pink }) -- Warm coral pink for types
  vim.api.nvim_set_hl(0, "Special", { fg = p.yellow }) -- Deep red for special chars
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.amber, underline = true }) -- Warm amber underlines
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg1, bold = true }) -- Bright yellow todos

  -- Essential UI elements for better readability
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 }) -- Line numbers in subtle gray
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.orange, bold = true }) -- Current line number highlighted
  vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg }) -- Selection highlighting
  vim.api.nvim_set_hl(0, "Search", { fg = p.bg1, bg = p.yellow }) -- Search highlighting
  vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.orange }) -- Incremental search
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 }) -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 }) -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.bg4 }) -- Window splits
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.bg4 }) -- Modern window separators
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 }) -- Tab line
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 }) -- Tab line fill
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true }) -- Selected tab
  
  -- Popup menus for better completion readability
  vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 }) -- Popup menu
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg4 }) -- Selected popup item
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg4 }) -- Popup scrollbar
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 }) -- Popup scrollbar thumb
  
  -- Error and warning highlights
  vim.api.nvim_set_hl(0, "Error", { fg = p.red, bold = true }) -- Error text
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.red, bold = true }) -- Error messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.orange, bold = true }) -- Warning messages
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 }) -- Mode messages

  -- Apply Treesitter theming
  require("matteblack.treesitter").apply()

  -- Apply Snacks.nvim theming
  require("matteblack.snacks").apply()

  -- Apply todo-comments.nvim theming
  require("matteblack.todo-comments").apply()

  -- Apply Noice.nvim theming
  require("matteblack.noice").apply()

  -- Apply neotree theming
  require("matteblack.neotree").apply()
end

return M 