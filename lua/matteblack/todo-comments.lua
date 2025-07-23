local colors = require("matteblack.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- todo-comments.nvim specific highlight groups
  vim.api.nvim_set_hl(0, "TodoBgTODO", { fg = p.bg1, bg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgTODO", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIX", { fg = p.bg1, bg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgFIX", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgFIXME", { fg = p.bg1, bg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgFIXME", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgHACK", { fg = p.bg1, bg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgHACK", { fg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgNOTE", { fg = p.bg1, bg = p.fg3, italic = true })
  vim.api.nvim_set_hl(0, "TodoFgNOTE", { fg = p.fg2, italic = true })
  vim.api.nvim_set_hl(0, "TodoBgWARN", { fg = p.bg1, bg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgWARN", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgPERF", { fg = p.bg1, bg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgPERF", { fg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoBgTEST", { fg = p.bg1, bg = p.amber, bold = true })
  vim.api.nvim_set_hl(0, "TodoFgTEST", { fg = p.amber, bold = true })

  -- Additional todo-comments.nvim variants
  vim.api.nvim_set_hl(0, "TodoSignTODO", { fg = p.yellow, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIX", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignFIXME", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignHACK", { fg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignNOTE", { fg = p.fg2, italic = true })
  vim.api.nvim_set_hl(0, "TodoSignWARN", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignPERF", { fg = p.orange, bold = true })
  vim.api.nvim_set_hl(0, "TodoSignTEST", { fg = p.amber, bold = true })
end

return M
