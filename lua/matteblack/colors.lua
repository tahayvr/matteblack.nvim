---@diagnostic disable: undefined-global

local M = {}

M.palette = {
  none = "NONE",

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
  local config = require("matteblack.config")
  local opts = config.options

  local p = vim.tbl_deep_extend("force", {}, M.palette)

  -- Allow user to customize colors
  opts.on_colors(p)

  local function set(group, hl_opts)
    vim.api.nvim_set_hl(0, group, hl_opts)
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "matteblack"

  -- Apply transparent backgrounds if enabled
  set("Normal", { fg = p.fg1, bg = opts.transparent and p.none or p.bg1 })
  set("NormalFloat", { fg = p.fg1, bg = opts.styles.floats == "transparent" and p.none or p.bg3 })
  set("FloatBorder", { fg = p.bg2, bg = opts.styles.floats == "transparent" and p.none or p.bg3 })
  set("SignColumn", { fg = p.bg2, bg = opts.transparent and p.none or p.bg1 })
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

  set("FoldColumn", { fg = p.bg2, bg = opts.transparent and p.none or p.bg1 })
  set("Folded", { fg = p.fg2, bg = p.bg3 })

  set("StatusLine", { fg = p.fg1, bg = p.bg3 })
  set("StatusLineNC", { fg = p.fg3, bg = p.bg2 })
  set("WinSeparator", { fg = p.bg2 })
  set("VertSplit", { fg = p.bg2 })
  set("TabLine", { fg = p.fg3, bg = p.bg2 })
  set("TabLineFill", { bg = opts.transparent and p.none or p.bg1 })
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

  -- Diagnostic virtual text
  set("DiagnosticVirtualTextError", { fg = p.crimson, italic = true })
  set("DiagnosticVirtualTextWarn", { fg = p.amber, italic = true })
  set("DiagnosticVirtualTextInfo", { fg = p.gold, italic = true })
  set("DiagnosticVirtualTextHint", { fg = p.blue, italic = true })
  set("DiagnosticVirtualTextOk", { fg = p.teal, italic = true })

  -- Diagnostic underlines
  set("DiagnosticUnderlineError", { undercurl = true, sp = p.crimson })
  set("DiagnosticUnderlineWarn", { undercurl = true, sp = p.amber })
  set("DiagnosticUnderlineInfo", { undercurl = true, sp = p.gold })
  set("DiagnosticUnderlineHint", { undercurl = true, sp = p.blue })
  set("DiagnosticUnderlineOk", { undercurl = true, sp = p.teal })

  -- LSP
  set("LspInlayHint", { fg = p.comment, italic = true })
  set("LspReferenceText", { bg = p.bg3 })
  set("LspReferenceRead", { bg = p.bg3 })
  set("LspReferenceWrite", { bg = p.bg3, underline = true })

  -- Apply style configurations
  local keyword_style = vim.tbl_extend("force", { fg = p.green }, opts.styles.keywords or {})

  set("Comment", vim.tbl_extend("force", { fg = p.comment }, opts.styles.comments or {}))
  set("Constant", { fg = p.amber })
  set("String", { fg = p.fg1 })
  set("Character", { fg = p.gold })
  set("Number", { fg = p.gold })
  set("Float", { fg = p.gold })
  set("Boolean", { fg = p.teal })
  set("Identifier", vim.tbl_extend("force", { fg = p.amber }, opts.styles.variables or {}))
  set("Function", vim.tbl_extend("force", { fg = p.crimson }, opts.styles.functions or {}))
  set("Statement", { fg = p.green })
  set("Keyword", keyword_style)
  set("Conditional", keyword_style)
  set("Repeat", keyword_style)
  set("Operator", { fg = p.fg2 })
  set("Exception", keyword_style)
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

  require("matteblack.plugins.treesitter").apply(p, opts)
  require("matteblack.plugins.snacks").apply(p, opts)
  require("matteblack.plugins.todo-comments").apply(p, opts)
  require("matteblack.plugins.noice").apply(p, opts)
  require("matteblack.plugins.neotree").apply(p, opts)
  require("matteblack.plugins.telescope").apply(p, opts)
  require("matteblack.plugins.lazy").apply(p, opts)
  require("matteblack.plugins.cmp").apply(p, opts)
  require("matteblack.plugins.gitsigns").apply(p, opts)
  require("matteblack.plugins.which-key").apply(p, opts)
  require("matteblack.plugins.trouble").apply(p, opts)
  require("matteblack.plugins.bufferline").apply(p, opts)
  require("matteblack.plugins.flash").apply(p, opts)
  require("matteblack.plugins.illuminate").apply(p, opts)
  require("matteblack.plugins.indent-blankline").apply(p, opts)
  require("matteblack.plugins.aerial").apply(p, opts)
  require("matteblack.plugins.hop").apply(p, opts)
  require("matteblack.plugins.leap").apply(p, opts)
  require("matteblack.plugins.barbar").apply(p, opts)

  -- Dim inactive windows
  if opts.dim_inactive then
    set("NormalNC", { fg = p.fg3, bg = opts.transparent and p.none or p.bg0 })
  end

  -- Allow user to customize highlights
  local highlights = {}
  opts.on_highlights(highlights, p)
  for group, hl_opts in pairs(highlights) do
    set(group, hl_opts)
  end
end

return M
