local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = c.teal })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = c.orange })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = c.crimson })
  vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = c.comment })
end

return M
