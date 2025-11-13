local Util = require("matteblack.util")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

function M.apply(c, opts)
  local bg_current = opts.transparent and c.none or c.bg1
  local bg_visible = opts.transparent and c.none or c.bg3
  local bg_alternate = opts.transparent and c.none or c.bg2

  vim.api.nvim_set_hl(0, "BufferAlternate", { bg = bg_alternate, fg = c.fg1 })
  vim.api.nvim_set_hl(0, "BufferAlternateADDED", { bg = bg_alternate, fg = c.teal })
  vim.api.nvim_set_hl(0, "BufferAlternateCHANGED", { bg = bg_alternate, fg = c.orange })
  vim.api.nvim_set_hl(0, "BufferAlternateDELETED", { bg = bg_alternate, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferAlternateERROR", { bg = bg_alternate, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferAlternateHINT", { bg = bg_alternate, fg = c.blue })
  vim.api.nvim_set_hl(0, "BufferAlternateINFO", { bg = bg_alternate, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferAlternateIndex", { bg = bg_alternate, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferAlternateMod", { bg = bg_alternate, fg = c.amber })
  vim.api.nvim_set_hl(0, "BufferAlternateSign", { bg = bg_alternate, fg = opts.transparent and c.bg1 or bg_alternate })
  vim.api.nvim_set_hl(0, "BufferAlternateTarget", { bg = bg_alternate, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferAlternateWARN", { bg = bg_alternate, fg = c.amber })

  vim.api.nvim_set_hl(0, "BufferCurrent", { bg = bg_current, fg = c.fg1 })
  vim.api.nvim_set_hl(0, "BufferCurrentADDED", { bg = bg_current, fg = c.teal })
  vim.api.nvim_set_hl(0, "BufferCurrentCHANGED", { bg = bg_current, fg = c.orange })
  vim.api.nvim_set_hl(0, "BufferCurrentDELETED", { bg = bg_current, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferCurrentERROR", { bg = bg_current, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferCurrentHINT", { bg = bg_current, fg = c.blue })
  vim.api.nvim_set_hl(0, "BufferCurrentINFO", { bg = bg_current, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = bg_current, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = bg_current, fg = c.amber })
  vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = bg_current, fg = opts.transparent and c.bg1 or bg_current })
  vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = bg_current, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferCurrentWARN", { bg = bg_current, fg = c.amber })

  local bg_inactive = opts.transparent and c.none or Util.blend_bg(c.bg3, 0.4)
  vim.api.nvim_set_hl(0, "BufferInactive", { bg = bg_inactive, fg = Util.blend_bg(c.fg3, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveADDED", { bg = bg_inactive, fg = Util.blend_bg(c.teal, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveCHANGED", { bg = bg_inactive, fg = Util.blend_bg(c.orange, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveDELETED", { bg = bg_inactive, fg = Util.blend_bg(c.crimson, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveERROR", { bg = bg_inactive, fg = Util.blend_bg(c.crimson, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveHINT", { bg = bg_inactive, fg = Util.blend_bg(c.blue, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveINFO", { bg = bg_inactive, fg = Util.blend_bg(c.gold, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveIndex", { bg = bg_inactive, fg = c.fg3 })
  vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = bg_inactive, fg = Util.blend_bg(c.amber, 0.8) })
  vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = bg_inactive, fg = opts.transparent and c.bg1 or bg_inactive })
  vim.api.nvim_set_hl(0, "BufferInactiveTarget", { bg = bg_inactive, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferInactiveWARN", { bg = bg_inactive, fg = Util.blend_bg(c.amber, 0.8) })

  vim.api.nvim_set_hl(0, "BufferOffset", { bg = bg_visible, fg = c.fg3 })
  vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = opts.transparent and c.none or Util.blend_bg(c.bg3, 0.8), fg = c.fg3 })
  vim.api.nvim_set_hl(0, "BufferTabpages", { bg = bg_visible, fg = c.none })

  vim.api.nvim_set_hl(0, "BufferVisible", { bg = bg_visible, fg = c.fg1 })
  vim.api.nvim_set_hl(0, "BufferVisibleADDED", { bg = bg_visible, fg = c.teal })
  vim.api.nvim_set_hl(0, "BufferVisibleCHANGED", { bg = bg_visible, fg = c.orange })
  vim.api.nvim_set_hl(0, "BufferVisibleDELETED", { bg = bg_visible, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferVisibleERROR", { bg = bg_visible, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferVisibleHINT", { bg = bg_visible, fg = c.blue })
  vim.api.nvim_set_hl(0, "BufferVisibleINFO", { bg = bg_visible, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferVisibleIndex", { bg = bg_visible, fg = c.gold })
  vim.api.nvim_set_hl(0, "BufferVisibleMod", { bg = bg_visible, fg = c.amber })
  vim.api.nvim_set_hl(0, "BufferVisibleSign", { bg = bg_visible, fg = opts.transparent and c.bg1 or bg_visible })
  vim.api.nvim_set_hl(0, "BufferVisibleTarget", { bg = bg_visible, fg = c.crimson })
  vim.api.nvim_set_hl(0, "BufferVisibleWARN", { bg = bg_visible, fg = c.amber })
end

return M
