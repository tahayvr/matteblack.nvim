local util = require("matteblack.util")

local M = {}

-- Map of extra name to extension and metadata
M.extras = {
  btop = { ext = "theme", url = "https://github.com/aristocratos/btop", label = "Btop" },
  delta = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  fzf = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "FZF" },
  ghostty = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  lazygit = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  opencode = { ext = "json", url = "https://opencode.ai", label = "OpenCode" },
  pygments = { ext = "py", url = "https://pygments.org", label = "Pygments" },
  slack = { ext = "txt", url = "https://slack.com", label = "Slack" },
  sublime = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/color_schemes_tmtheme.html", label = "Sublime Text" },
  xcode = { ext = "xccolortheme", url = "https://developer.apple.com/xcode/", label = "Xcode" },
}

function M.setup()
  local colors = require("matteblack.colors").palette

  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("matteblack.extra." .. extra)
    local fname = "matteblack" .. (info.ext ~= "" and "." .. info.ext or "")
    fname = extra .. "/" .. fname

    colors["_upstream_url"] = "https://github.com/tahayvr/matteblack.nvim/raw/main/extras/" .. fname
    colors["_name"] = "matteblack"

    print("[write] extras/" .. fname)
    util.write("extras/" .. fname, plugin.generate(colors))
  end
end

return M
