local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = c.bg2, nocombine = true })
  vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = c.blue, nocombine = true })
  vim.api.nvim_set_hl(0, "IblIndent", { fg = c.bg2, nocombine = true })
  vim.api.nvim_set_hl(0, "IblScope", { fg = c.blue, nocombine = true })
  vim.api.nvim_set_hl(0, "IblWhitespace", { fg = c.bg2, nocombine = true })
end

return M
