local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = c.orange })
  vim.api.nvim_set_hl(0, "BufferLineFill", { bg = c.bg1 })
  vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = c.fg3, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = c.fg1, bg = c.bg3, bold = true })
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = c.fg2, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "BufferLineModified", { fg = c.orange, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { fg = c.orange, bg = c.bg3 })
  vim.api.nvim_set_hl(0, "BufferLineModifiedVisible", { fg = c.orange, bg = c.bg2 })
end

return M
