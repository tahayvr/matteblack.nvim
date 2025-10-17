local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

function M.apply(c, opts)
  local bg_float = opts.styles.floats == "transparent" and c.none or c.bg3

  vim.api.nvim_set_hl(0, "CmpDocumentation", { fg = c.fg1, bg = bg_float })
  vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { fg = c.bg2, bg = bg_float })
  vim.api.nvim_set_hl(0, "CmpGhostText", { fg = c.fg3 })
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = c.fg1, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = c.fg3, bg = c.none, strikethrough = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = c.blue, bg = c.none, bold = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.blue, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKind", { fg = c.orange, bg = c.none })
  vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = c.amber })
  vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = c.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = c.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = c.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = c.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = c.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = c.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = c.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = c.green })
  vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = c.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = c.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = c.teal })
  vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = c.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = c.gold })
  vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = c.amber })
  vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = c.amber })
  vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = c.amber })
  vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = c.comment, bg = c.none })
end

return M
