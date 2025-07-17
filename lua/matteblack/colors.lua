local M = {}

M.palette = {
  bg      = "#121212",
  fg      = "#EAEAEA",
  red     = "#B91C1C",
  orange  = "#F59E0B",
  yellow  = "#E5C07B",
  pink    = "#E06C75",
  magenta = "#C678DD",
  green   = "#98C379",
  blue    = "#61AFEF",
  cyan    = "#56B6C2",
  gray    = "#5C6370",
}

function M.apply()
  local p = M.palette
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "matteblack"

  -- Basic highlight groups
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "String", { fg = p.green })
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.blue })
  vim.api.nvim_set_hl(0, "Statement", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Type", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "Special", { fg = p.red })
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.cyan, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg, bold = true })
  -- Add more highlight groups as needed
end

return M 