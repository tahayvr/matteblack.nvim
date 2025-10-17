local M = {}

function M.apply(c, opts)

  -- todo-comments.nvim specific highlight groups
  vim.api.nvim_set_hl(0, "TodoBgTODO", { fg = c.bg1, bg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgTODO", { fg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIX", { fg = c.bg1, bg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgFIX", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIXME", { fg = c.bg1, bg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgFIXME", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgHACK", { fg = c.bg1, bg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgHACK", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgNOTE", { fg = c.bg1, bg = c.fg3, italic = true })
  vim.api.nvim_set_hl(0, "TodoFgNOTE", { fg = c.fg2, italic = true })
  vim.api.nvim_set_hl(0, "TodoBgWARN", { fg = c.bg1, bg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgWARN", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgPERF", { fg = c.bg1, bg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgPERF", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgTEST", { fg = c.bg1, bg = c.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgTEST", { fg = c.amber, bold = true })

  -- Additional todo-comments.nvim variants
  vim.api.nvim_set_hl(0, "TodoSignTODO", { fg = c.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIX", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIXME", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignHACK", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignNOTE", { fg = c.fg2, italic = true })
  vim.api.nvim_set_hl(0, "TodoSignWARN", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignPERF", { fg = c.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignTEST", { fg = c.amber, bold = true })
end

return M
