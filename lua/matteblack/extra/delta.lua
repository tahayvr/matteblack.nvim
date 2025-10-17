local util = require("matteblack.util")

local M = {}

--- @param colors table
function M.generate(colors)
  colors.delta = {
    add = util.blend_bg(colors.teal, 0.45, colors.bg),
    delete = util.blend_bg(colors.crimson, 0.45, colors.bg),
  }

  -- Add git diff colors if not present
  if not colors.diff then
    colors.diff = {
      add = util.blend_bg(colors.teal, 0.20, colors.bg),
      delete = util.blend_bg(colors.crimson, 0.20, colors.bg),
    }
  end

  if not colors.git then
    colors.git = {
      add = colors.teal,
      delete = colors.crimson,
    }
  end

  -- Add fg_gutter if not present
  if not colors.fg_gutter then
    colors.fg_gutter = colors.fg3
  end

  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${diff.delete}"
  minus-non-emph-style          = syntax "${diff.delete}"
  minus-emph-style              = syntax "${delta.delete}"
  minus-empty-line-marker-style = syntax "${diff.delete}"
  line-numbers-minus-style      = "${git.delete}"
  plus-style                    = syntax "${diff.add}"
  plus-non-emph-style           = syntax "${diff.add}"
  plus-emph-style               = syntax "${delta.add}"
  plus-empty-line-marker-style  = syntax "${diff.add}"
  line-numbers-plus-style       = "${git.add}"
  line-numbers-zero-style       = "${fg_gutter}"
]],
    colors
  )
  return delta
end

return M
