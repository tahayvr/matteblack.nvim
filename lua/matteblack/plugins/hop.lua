local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "HopNextKey", { fg = c.magenta, bold = true })
  vim.api.nvim_set_hl(0, "HopNextKey1", { fg = c.blue, bold = true })
  vim.api.nvim_set_hl(0, "HopNextKey2", { fg = c.cyan })
  vim.api.nvim_set_hl(0, "HopUnmatched", { fg = c.fg3 })
end

return M
