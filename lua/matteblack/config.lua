local M = {}

---@class matteblack.Config
---@field on_colors fun(colors: table)
---@field on_highlights fun(highlights: table, colors: table)
M.defaults = {
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a colors table
  ---@param colors table
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with highlights and colors table
  ---@param highlights table
  ---@param colors table
  on_highlights = function(highlights, colors) end,
}

---@type matteblack.Config
M.options = nil

---@param options? matteblack.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? matteblack.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
