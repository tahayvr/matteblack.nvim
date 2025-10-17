local util = require("matteblack.util")

local M = {}

--- @param colors table
function M.generate(colors)
  local fzf = util.template(
    [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:${bg2} \
  --color=bg:${bg1} \
  --color=border:${cyan} \
  --color=fg:${fg1} \
  --color=gutter:${bg1} \
  --color=header:${orange} \
  --color=hl+:${orange} \
  --color=hl:${orange} \
  --color=info:${fg3} \
  --color=marker:${crimson} \
  --color=pointer:${crimson} \
  --color=prompt:${orange} \
  --color=query:${fg1}:regular \
  --color=scrollbar:${cyan} \
  --color=separator:${orange} \
  --color=spinner:${crimson} \
"
]],
    colors
  )
  return fzf
end

return M
