local util = require("matteblack.util")

local M = {}

--- @param colors table
function M.generate(colors)
  -- Add border_highlight if not present
  if not colors.border_highlight then
    colors.border_highlight = colors.cyan
  end
  if not colors.bg_visual then
    colors.bg_visual = colors.bg2
  end
  if not colors.red1 then
    colors.red1 = colors.crimson
  end

  local lazygit = util.template(
    [[
gui:
  nerdFontsVersion: "3"
  theme:
    activeBorderColor:
      - "${orange}"
      - "bold"
    inactiveBorderColor:
      - "${border_highlight}"
    searchingActiveBorderColor:
      - "${orange}"
      - "bold"
    optionsTextColor:
      - "${blue}"
    selectedLineBgColor:
      - "${bg_visual}"
    cherryPickedCommitFgColor:
      - "${blue}"
    cherryPickedCommitBgColor:
      - "${magenta}"
    markedBaseCommitFgColor:
      - "${blue}"
    markedBaseCommitBgColor:
      - "${yellow}"
    unstagedChangesColor:
      - "${red1}"
    defaultFgColor:
      - "${fg}"
]],
    colors
  )
  return lazygit
end

return M
