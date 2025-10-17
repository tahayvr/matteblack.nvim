local config = require("matteblack.config")

local M = {}

---@param opts? matteblack.Config
function M.setup(opts)
  config.setup(opts)
  M.load()
end

function M.load()
  -- Load the main colors
  require("matteblack.colors").apply()
end

-- Backwards compatibility
function M.colorscheme()
  M.load()
end

function M.lualine()
  return require("lualine.themes.matteblack")
end

function M.snacks()
  require("matteblack.plugins.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M
