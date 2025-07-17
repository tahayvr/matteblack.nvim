local M = {}

function M.colorscheme()
  -- Load the main colors
  require("matteblack.colors").apply()
end

function M.lualine()
  return require("matteblack.lualine")
end

return M 