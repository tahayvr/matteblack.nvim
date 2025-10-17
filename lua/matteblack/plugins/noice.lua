local M = {}

function M.apply(c, opts)

  -- Noice.nvim plugin highlight groups
  -- Command line
  vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = c.orange })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconCmdline", { fg = c.orange })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconFilter", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconLua", { fg = c.amber })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = c.gray, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = c.orange, bold = true })

  -- Command line prompt
  vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = c.orange, bold = true })

  -- Completion menu
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindDefault", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindKeyword", { fg = c.magenta })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindVariable", { fg = c.fg1 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstant", { fg = c.amber })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindReference", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindValue", { fg = c.orange })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindFunction", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindMethod", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstructor", { fg = c.pink })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindClass", { fg = c.pink })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindInterface", { fg = c.pink })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindStruct", { fg = c.pink })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindEvent", { fg = c.orange })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindOperator", { fg = c.fg1 })
  vim.api.nvim_set_hl(0, "NoiceCompletionItemKindTypeParameter", { fg = c.pink })

  -- Confirm dialog
  vim.api.nvim_set_hl(0, "NoiceConfirm", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { fg = c.gray, bg = c.bg2 })

  -- Messages
  vim.api.nvim_set_hl(0, "NoicePopup", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoicePopupBorder", { fg = c.gray, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoicePopupmenu", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { fg = c.gray, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoicePopupmenuSelected", { fg = c.fg1, bg = c.bg3 })
  vim.api.nvim_set_hl(0, "NoicePopupmenuMatch", { fg = c.yellow, bold = true })

  -- Split view
  vim.api.nvim_set_hl(0, "NoiceSplit", { fg = c.fg1, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NoiceSplitBorder", { fg = c.gray, bg = c.bg1 })

  -- Virtual text
  vim.api.nvim_set_hl(0, "NoiceVirtualText", { fg = c.gray, italic = true })

  -- LSP progress
  vim.api.nvim_set_hl(0, "NoiceLspProgressClient", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "NoiceLspProgressSpinner", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "NoiceLspProgressTitle", { fg = c.fg1 })

  -- Search
  vim.api.nvim_set_hl(0, "NoiceFormatProgressDone", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "NoiceFormatProgressTodo", { fg = c.gray })

  -- Mini views
  vim.api.nvim_set_hl(0, "NoiceMini", { fg = c.fg1, bg = c.bg2 })

  -- Scrollbar
  vim.api.nvim_set_hl(0, "NoiceScrollbar", { bg = c.bg3 })
  vim.api.nvim_set_hl(0, "NoiceScrollbarThumb", { bg = c.gray })

  -- Cursor
  vim.api.nvim_set_hl(0, "NoiceCursor", { fg = c.bg1, bg = c.orange })

  -- History
  vim.api.nvim_set_hl(0, "NoiceHistory", { fg = c.fg1, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NoiceHistoryBorder", { fg = c.gray, bg = c.bg2 })
end

return M
