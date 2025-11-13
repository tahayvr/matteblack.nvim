local M = {}

M.url = "https://github.com/folke/flash.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "FlashBackdrop", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "FlashLabel", { fg = c.bg1, bg = c.magenta, bold = true })
  vim.api.nvim_set_hl(0, "FlashCurrent", { fg = c.bg1, bg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "FlashMatch", { fg = c.gold, bold = true })
end

return M
