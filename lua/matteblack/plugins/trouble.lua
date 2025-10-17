local M = {}

M.url = "https://github.com/folke/trouble.nvim"

function M.apply(c, opts)
  vim.api.nvim_set_hl(0, "TroubleText", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "TroubleCount", { fg = c.magenta, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "TroubleNormal", { fg = c.fg1, bg = opts.styles.sidebars == "transparent" and c.none or c.bg3 })
  vim.api.nvim_set_hl(0, "TroubleSource", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "TroubleCode", { fg = c.gold })
  vim.api.nvim_set_hl(0, "TroubleLocation", { fg = c.comment })
  vim.api.nvim_set_hl(0, "TroubleFoldIcon", { fg = c.orange })
  vim.api.nvim_set_hl(0, "TroubleIndent", { fg = c.bg2 })
end

return M
