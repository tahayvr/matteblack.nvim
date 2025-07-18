local M = {}

function M.colorscheme()
  -- Load the main colors
  require("matteblack.colors").apply()
end

function M.lualine()
  return require("matteblack.lualine")
end

function M.snacks()
  require("matteblack.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M