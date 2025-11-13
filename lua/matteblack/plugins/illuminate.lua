local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = c.bg2 })
  vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = c.bg2 })
  vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = c.bg2 })
  vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = c.bg2 })
  vim.api.nvim_set_hl(0, "illuminatedWord", { bg = c.bg2 })
end

return M
