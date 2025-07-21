local colors = require("matteblack.colors").palette

local matteblack = {}

matteblack.normal = {
  a = { fg = colors.bg1, bg = colors.orange, gui = "bold" },
  b = { fg = colors.fg1, bg = "#2A2A2A" },
  c = { fg = colors.gray, bg = "#1A1A1A" },
}

matteblack.insert = {
  a = { fg = colors.bg1, bg = colors.red, gui = "bold" },
}

matteblack.visual = {
  a = { fg = colors.bg1, bg = colors.magenta, gui = "bold" },
}

matteblack.replace = {
  a = { fg = colors.bg1, bg = colors.pink, gui = "bold" },
}

matteblack.command = {
  a = { fg = colors.bg1, bg = colors.yellow, gui = "bold" },
}

matteblack.inactive = {
  a = { fg = colors.gray, bg = colors.bg1 },
  b = { fg = colors.gray, bg = colors.bg1 },
  c = { fg = colors.gray, bg = colors.bg1 },
}

return matteblack 