local util = require("matteblack.util")

local M = {}

--- @param colors table
function M.generate(colors)
  local theme = util.template(
    [[
palette = 0=${bg2}
palette = 1=${red}
palette = 2=${teal}
palette = 3=${orange}
palette = 4=${blue}
palette = 5=${purple}
palette = 6=${cyan}
palette = 7=${fg2}
palette = 8=${fg3}
palette = 9=${crimson}
palette = 10=${green}
palette = 11=${gold}
palette = 12=${blue}
palette = 13=${magenta}
palette = 14=${cyan}
palette = 15=${fg0}

background = ${bg1}
foreground = ${fg1}
cursor-color = ${orange}
selection-background = ${bg2}
selection-foreground = ${fg0}
]],
    colors
  )
  return theme
end

return M
