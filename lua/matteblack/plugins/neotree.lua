local M = {}

function M.apply(c, opts)

  -- Main neotree window
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = c.fg1, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = c.fg2, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = c.bg1, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = c.bg2, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = c.bg2, bg = c.bg1 })

  -- Title and tabs
  vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { fg = c.fg3, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeTabActive", { fg = c.orange, bg = c.bg3, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = c.bg2, bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = c.bg2, bg = c.bg3 })

  -- Directory and file icons
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = c.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = c.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = c.orange, bold = true })

  -- File types and extensions
  vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = c.amber, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = c.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = c.fg3 })

  -- Cursor and selection
  vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = c.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = c.fg3 })

  -- Git status indicators
  vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = c.orange })
  vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = c.red, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = c.red })
  vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = c.gray2 })
  vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = c.amber })
  vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = c.pink })
  vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = c.orange })

  -- Symlinks
  vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = c.magenta, italic = true })

  -- Floating window (for popups)
  vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = c.bg2, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = c.orange, bg = c.bg1, bold = true })

  -- Preview window
  vim.api.nvim_set_hl(0, "NeoTreePreviewBorder", { fg = c.bg2, bg = c.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreePreviewTitle", { fg = c.pink, bg = c.bg1, bold = true })

  -- Buffers tab
  vim.api.nvim_set_hl(0, "NeoTreeBufferNumber", { fg = c.fg3 })

  -- Statistics and info
  vim.api.nvim_set_hl(0, "NeoTreeStats", { fg = c.fg3, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeStatsHeader", { fg = c.orange, bold = true })

  -- Modified indicator
  vim.api.nvim_set_hl(0, "NeoTreeModified", { fg = c.amber })

  -- Hidden files
  vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = c.gray2, italic = true })

  -- Filter text
  vim.api.nvim_set_hl(0, "NeoTreeFilterTerm", { fg = c.yellow, bold = true })

  -- Titlebar
  vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = c.fg1, bg = c.bg3, bold = true })
end

return M
