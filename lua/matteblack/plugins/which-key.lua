local M = {}

M.url = "https://github.com/folke/which-key.nvim"

function M.apply(c, opts)

  vim.api.nvim_set_hl(0, "WhichKey", { fg = c.cyan })
  vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = c.blue })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = c.magenta })
  vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = c.comment })
  vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = c.bg3 })
  vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = c.bg3 })
  vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = c.bg2, bg = c.bg3 })
end

return M
