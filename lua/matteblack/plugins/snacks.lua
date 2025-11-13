local M = {}

function M.apply(c, opts)

  -- Dashboard
  vim.api.nvim_set_hl(0, "SnacksDashboard", { fg = c.fg1, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = c.fg3, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = c.fg3, italic = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = c.fg })
  vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksDashboardRecentFiles", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "SnacksDashboardShortcut", { fg = c.pink })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminal", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalBorder", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalTitle", { fg = c.fg1, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInput", { fg = c.fg1 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputBorder", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearch", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearchBorder", { fg = c.fg3 })

  -- Picker
  vim.api.nvim_set_hl(0, "SnacksPicker", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = c.orange, bg = c.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerIcon", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksPickerIconDir", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "SnacksPickerIconFile", { fg = c.fg })
  vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerCursor", { fg = c.bg, bg = c.magenta })
  vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { bg = "#2A2A2A" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreview", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { fg = c.pink, bg = c.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerList", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { fg = c.amber, bg = c.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = c.yellow, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = c.gray, bg = c.bg })

  -- Notifier
  vim.api.nvim_set_hl(0, "SnacksNotifier", { fg = c.fg, bg = "#1A1A1A" })
  vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { fg = c.gray, bg = "#1A1A1A" })
  vim.api.nvim_set_hl(0, "SnacksNotifierTitle", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "SnacksNotifierIcon", { fg = c.amber })
  vim.api.nvim_set_hl(0, "SnacksNotifierBody", { fg = c.fg })
  vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksNotifierError", { fg = c.red })
  vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { fg = c.gray })
  vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { fg = c.magenta })

  -- Terminal
  vim.api.nvim_set_hl(0, "SnacksTerminal", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksTerminalTitle", { fg = c.yellow, bg = c.bg, bold = true })

  -- Input
  vim.api.nvim_set_hl(0, "SnacksInput", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksInputBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksInputTitle", { fg = c.yellow, bg = c.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksInputIcon", { fg = c.amber })

  -- Indent
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2A2A2A" })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = c.magenta })

  -- Explorer
  vim.api.nvim_set_hl(0, "SnacksExplorer", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { fg = c.orange, bg = c.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerDir", { fg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerFile", { fg = c.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerLink", { fg = c.pink, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerIcon", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconDir", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconFile", { fg = c.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconLink", { fg = c.pink, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitAdded", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitModified", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitDeleted", { fg = c.red })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnored", { fg = c.gray })

  -- Scroll
  vim.api.nvim_set_hl(0, "SnacksScroll", { fg = c.magenta, bg = c.none })
  vim.api.nvim_set_hl(0, "SnacksScrollThumb", { bg = c.gray })

  -- Zen mode
  vim.api.nvim_set_hl(0, "SnacksZen", { fg = c.fg, bg = c.bg })

  -- Words (LSP references)
  vim.api.nvim_set_hl(0, "SnacksWords", { bg = "#2A2A2A", underline = true })

  -- Dim (inactive code)
  vim.api.nvim_set_hl(0, "SnacksDim", { fg = c.gray })

  -- Scratch
  vim.api.nvim_set_hl(0, "SnacksScratch", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchBorder", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchTitle", { fg = c.amber, bg = c.bg, bold = true })

  -- Statuscolumn
  vim.api.nvim_set_hl(0, "SnacksStatusColumn", { fg = c.gray, bg = c.bg })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnNumber", { fg = c.gray })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnRelNumber", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitAdd", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitChange", { fg = c.orange })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitDelete", { fg = c.red })
end

return M 