local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

function M.apply(c, opts)
  local bg_float = opts.styles.floats == "transparent" and c.none or c.bg3

  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = c.bg2, bg = bg_float })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = c.fg1, bg = bg_float })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = c.orange, bg = bg_float })
  vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = c.orange, bg = bg_float })
  vim.api.nvim_set_hl(0, "TelescopeResultsComment", { fg = c.comment })
  vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = c.fg1, bg = c.bg2, bold = true })
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = c.orange, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = c.gold, bold = true })
end

return M
