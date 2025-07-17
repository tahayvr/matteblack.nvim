local colors = require("matteblack.colors").palette

local matteblack = {}

matteblack.normal = {
  a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
  b = { fg = colors.fg, bg = "#2A2A2A" },
  c = { fg = colors.gray, bg = "#1A1A1A" },
}

matteblack.insert = {
  a = { fg = colors.bg, bg = colors.red, gui = "bold" },
}

matteblack.visual = {
  a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
}

matteblack.replace = {
  a = { fg = colors.bg, bg = colors.pink, gui = "bold" },
}

matteblack.command = {
  a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
}

matteblack.inactive = {
  a = { fg = colors.gray, bg = colors.bg },
  b = { fg = colors.gray, bg = colors.bg },
  c = { fg = colors.gray, bg = colors.bg },
}

return matteblack 