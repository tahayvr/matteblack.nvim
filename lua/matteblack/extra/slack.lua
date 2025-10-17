local util = require("matteblack.util")

local M = {}

--- @param colors table
function M.generate(colors)
  -- Add bg_highlight if not present
  if not colors.bg_highlight then
    colors.bg_highlight = colors.bg3
  end
  if not colors.bg_visual then
    colors.bg_visual = colors.bg2
  end

  return util.template("${bg2},${bg_highlight},${magenta},${bg_visual}", colors)
end

return M
