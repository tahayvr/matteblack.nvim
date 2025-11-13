local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "AerialNormal", { fg = c.fg1, bg = c.none })
  vim.api.nvim_set_hl(0, "AerialGuide", { fg = c.bg2 })
  vim.api.nvim_set_hl(0, "AerialLine", { bg = c.bg2 })
end

return M
