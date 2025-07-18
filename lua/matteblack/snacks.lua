local colors = require("matteblack.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Dashboard
  vim.api.nvim_set_hl(0, "SnacksDashboard", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = p.magenta, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = p.blue })
  vim.api.nvim_set_hl(0, "SnacksDashboardRecentFiles", { fg = p.green })
  vim.api.nvim_set_hl(0, "SnacksDashboardShortcut", { fg = p.pink })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminal", { fg = p.gray })

  -- Picker
  vim.api.nvim_set_hl(0, "SnacksPicker", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = p.blue, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerIcon", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksPickerIconDir", { fg = p.blue })
  vim.api.nvim_set_hl(0, "SnacksPickerIconFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerCursor", { fg = p.bg, bg = p.magenta })
  vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { bg = "#2A2A2A" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreview", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { fg = p.green, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerList", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { fg = p.cyan, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = p.yellow, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = p.gray, bg = p.bg })

  -- Notifier
  vim.api.nvim_set_hl(0, "SnacksNotifier", { fg = p.fg, bg = "#1A1A1A" })
  vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { fg = p.gray, bg = "#1A1A1A" })
  vim.api.nvim_set_hl(0, "SnacksNotifierTitle", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "SnacksNotifierIcon", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "SnacksNotifierBody", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { fg = p.blue })
  vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksNotifierError", { fg = p.red })
  vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { fg = p.gray })
  vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { fg = p.magenta })

  -- Terminal
  vim.api.nvim_set_hl(0, "SnacksTerminal", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalTitle", { fg = p.green, bg = p.bg, bold = true })

  -- Input
  vim.api.nvim_set_hl(0, "SnacksInput", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksInputBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksInputTitle", { fg = p.yellow, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksInputIcon", { fg = p.cyan })

  -- Indent
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2A2A2A" })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = p.magenta })

  -- Explorer
  vim.api.nvim_set_hl(0, "SnacksExplorer", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { fg = p.blue, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerDir", { fg = p.blue, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitAdded", { fg = p.green })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitModified", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitDeleted", { fg = p.red })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnored", { fg = p.gray })

  -- Scroll
  vim.api.nvim_set_hl(0, "SnacksScroll", { fg = p.magenta, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksScrollThumb", { bg = p.gray })

  -- Zen mode
  vim.api.nvim_set_hl(0, "SnacksZen", { fg = p.fg, bg = p.bg })

  -- Words (LSP references)
  vim.api.nvim_set_hl(0, "SnacksWords", { bg = "#2A2A2A", underline = true })

  -- Dim (inactive code)
  vim.api.nvim_set_hl(0, "SnacksDim", { fg = p.gray })

  -- Scratch
  vim.api.nvim_set_hl(0, "SnacksScratch", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchBorder", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchTitle", { fg = p.cyan, bg = p.bg, bold = true })

  -- Statuscolumn
  vim.api.nvim_set_hl(0, "SnacksStatusColumn", { fg = p.gray, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnNumber", { fg = p.gray })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnRelNumber", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitAdd", { fg = p.green })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitChange", { fg = p.orange })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitDelete", { fg = p.red })
end

return M 