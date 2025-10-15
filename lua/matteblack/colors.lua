---@diagnostic disable: undefined-global

local M = {}

M.palette = {
  -- Base shades
  bg0 = "#0D0D0D",
  bg1 = "#121212",
  bg2 = "#333333",
  bg3 = "#212121",
  bg4 = "#262626",

  fg0 = "#FFFFFF",
  fg1 = "#EAEAEA",
  fg2 = "#BEBEBE",
  fg3 = "#8A8A8D",
  fg4 = "#333333",

  -- Aliases for plugin integrations
  fg = "#EAEAEA",
  bg = "#121212",

  selbg = "#262626",
  selfg = "#FFFFFF",

  comment = "#8A8A8D",

  -- Accent palette (matches VS Code / Zed ports)
  red = "#B91C1C",
  crimson = "#DC2626",
  orange = "#F59E0B",
  amber = "#D97706",
  yellow = "#FBBF24",
  gold = "#EFBF04",
  ochre = "#BF9903",

  green = "#059669",
  teal = "#10B981",
  blue = "#3B82F6",
  purple = "#8D20B2",
  cyan = "#1EA7A0",

  pink = "#F87171",
  magenta = "#B027DE",

  gray = "#5C6370",
  gray1 = "#A3A3A3",
  gray2 = "#737373",
}

function M.apply()
  local p = M.palette
  local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "matteblack"

  set("Normal", { fg = p.fg1, bg = p.bg1 })
  set("NormalFloat", { fg = p.fg1, bg = p.bg3 })
  set("FloatBorder", { fg = p.bg2, bg = p.bg3 })
  set("SignColumn", { fg = p.bg2, bg = p.bg1 })
  set("NonText", { fg = p.bg2 })

  set("Cursor", { fg = p.bg1, bg = p.orange })
  set("CursorLine", { bg = p.bg3 })
  set("CursorColumn", { bg = p.bg3 })
  set("CursorLineNr", { fg = p.orange })
  set("LineNr", { fg = p.bg2 })
  set("MatchParen", { fg = p.orange, bg = p.bg4, bold = true })

  set("Visual", { fg = p.selfg, bg = p.bg2 })
  set("VisualNOS", { fg = p.selfg, bg = p.bg2 })
  set("Search", { fg = p.bg1, bg = p.orange })
  set("IncSearch", { fg = p.bg1, bg = p.gold })
  set("Substitute", { fg = p.bg1, bg = p.gold })
  set("HighlightedyankRegion", { bg = p.bg4 })

  set("FoldColumn", { fg = p.bg2, bg = p.bg1 })
  set("Folded", { fg = p.fg2, bg = p.bg3 })

  set("StatusLine", { fg = p.fg1, bg = p.bg3 })
  set("StatusLineNC", { fg = p.fg3, bg = p.bg2 })
  set("WinSeparator", { fg = p.bg2 })
  set("VertSplit", { fg = p.bg2 })
  set("TabLine", { fg = p.fg3, bg = p.bg2 })
  set("TabLineFill", { bg = p.bg1 })
  set("TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })

  set("Pmenu", { fg = p.fg2, bg = p.bg3 })
  set("PmenuSel", { fg = p.fg1, bg = p.bg2 })
  set("PmenuSbar", { bg = p.bg2 })
  set("PmenuThumb", { bg = p.fg3 })
  set("WildMenu", { fg = p.bg1, bg = p.orange })

  set("DiffAdd", { fg = p.teal })
  set("DiffDelete", { fg = p.crimson })
  set("DiffChange", { fg = p.orange })
  set("DiffText", { fg = p.orange, bold = true })

  set("DiagnosticOk", { fg = p.teal })
  set("DiagnosticHint", { fg = p.blue })
  set("DiagnosticInfo", { fg = p.gold })
  set("DiagnosticWarn", { fg = p.amber })
  set("DiagnosticError", { fg = p.crimson })

  set("Comment", { fg = p.comment, italic = true })
  set("Constant", { fg = p.amber })
  set("String", { fg = p.fg1 })
  set("Character", { fg = p.gold })
  set("Number", { fg = p.gold })
  set("Float", { fg = p.gold })
  set("Boolean", { fg = p.teal })
  set("Identifier", { fg = p.amber })
  set("Function", { fg = p.crimson })
  set("Statement", { fg = p.green })
  set("Keyword", { fg = p.green })
  set("Conditional", { fg = p.green })
  set("Repeat", { fg = p.green })
  set("Operator", { fg = p.fg2 })
  set("Exception", { fg = p.green })
  set("PreProc", { fg = p.yellow })
  set("Include", { fg = p.blue })
  set("Define", { fg = p.yellow })
  set("Macro", { fg = p.yellow })
  set("PreCondit", { fg = p.yellow })
  set("Type", { fg = p.yellow })
  set("StorageClass", { fg = p.yellow })
  set("Structure", { fg = p.yellow })
  set("Typedef", { fg = p.yellow })
  set("Special", { fg = p.orange })
  set("SpecialChar", { fg = p.gold })
  set("Tag", { fg = p.green })
  set("Delimiter", { fg = p.fg3 })
  set("SpecialComment", { fg = p.comment, italic = true })
  set("Underlined", { fg = p.orange, underline = true })
  set("Todo", { fg = p.bg1, bg = p.yellow, bold = true })

  vim.g.terminal_color_0 = p.bg2
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = "#129B70"
  vim.g.terminal_color_3 = p.orange
  vim.g.terminal_color_4 = "#325DCA"
  vim.g.terminal_color_5 = p.purple
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_7 = p.fg2
  vim.g.terminal_color_8 = p.fg3
  vim.g.terminal_color_9 = "#E62222"
  vim.g.terminal_color_10 = "#22C55E"
  vim.g.terminal_color_11 = "#F1CB42"
  vim.g.terminal_color_12 = "#3C71F6"
  vim.g.terminal_color_13 = "#B027DE"
  vim.g.terminal_color_14 = "#24D0C7"
  vim.g.terminal_color_15 = p.fg0
  vim.g.terminal_color_background = p.bg1
  vim.g.terminal_color_foreground = p.fg1

  require("matteblack.treesitter").apply()
  require("matteblack.snacks").apply()
  require("matteblack.todo-comments").apply()
  require("matteblack.noice").apply()
  require("matteblack.neotree").apply()
end

return M