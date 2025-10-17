local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "LeapMatch", { fg = c.bg1, bg = c.magenta, bold = true })
  vim.api.nvim_set_hl(0, "LeapLabel", { fg = c.magenta, bold = true })
  vim.api.nvim_set_hl(0, "LeapBackdrop", { fg = c.fg3 })
end

return M
