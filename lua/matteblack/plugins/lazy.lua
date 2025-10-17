local M = {}

M.url = "https://github.com/folke/lazy.nvim"

function M.apply(c, opts)
  vim.api.nvim_set_hl(0, "LazyProgressDone", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "LazyProgressTodo", { fg = c.fg3, bold = true })
  vim.api.nvim_set_hl(0, "LazyButton", { fg = c.fg2, bg = opts.styles.floats == "transparent" and c.none or c.bg3 })
  vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = c.fg1, bg = c.bg2, bold = true })
  vim.api.nvim_set_hl(0, "LazyComment", { fg = c.comment })
  vim.api.nvim_set_hl(0, "LazyCommit", { fg = c.gold })
  vim.api.nvim_set_hl(0, "LazyCommitIssue", { fg = c.blue })
  vim.api.nvim_set_hl(0, "LazyCommitScope", { fg = c.teal })
  vim.api.nvim_set_hl(0, "LazyCommitType", { fg = c.green })
  vim.api.nvim_set_hl(0, "LazyDimmed", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "LazyH1", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "LazyH2", { fg = c.fg1, bold = true })
  vim.api.nvim_set_hl(0, "LazyProp", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "LazyReasonCmd", { fg = c.gold })
  vim.api.nvim_set_hl(0, "LazyReasonEvent", { fg = c.amber })
  vim.api.nvim_set_hl(0, "LazyReasonFt", { fg = c.teal })
  vim.api.nvim_set_hl(0, "LazyReasonKeys", { fg = c.blue })
  vim.api.nvim_set_hl(0, "LazyReasonPlugin", { fg = c.crimson })
  vim.api.nvim_set_hl(0, "LazyReasonRuntime", { fg = c.green })
  vim.api.nvim_set_hl(0, "LazyReasonSource", { fg = c.purple })
  vim.api.nvim_set_hl(0, "LazyReasonStart", { fg = c.pink })
  vim.api.nvim_set_hl(0, "LazySpecial", { fg = c.orange })
  vim.api.nvim_set_hl(0, "LazyTaskOutput", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "LazyUrl", { fg = c.blue, underline = true })
  vim.api.nvim_set_hl(0, "LazyValue", { fg = c.teal })
end

return M
