local util = require("matteblack.util")

local M = {}

--- @param colors table
--- @return table<string, string>
local function generate_defs(colors)
  local defs = {}

  for key, value in pairs(colors) do
    -- Skip keys that start with underscore (metadata) and "none"
    if not key:match("^_") and key ~= "none" then
      if type(value) == "string" then
        defs[key] = value
      elseif type(value) == "table" then
        -- Handle nested tables like git, diff, terminal
        for subkey, subvalue in pairs(value) do
          if type(subvalue) == "string" then
            defs[key .. "_" .. subkey] = subvalue
          end
        end
      end
    end
  end

  return defs
end

--- @param defs table<string, string>
--- @param indent number Number of spaces to indent
--- @return string
local function format_defs_json(defs, indent)
  local defs_lines = {}

  -- Sort keys for consistent output
  local sorted_keys = {}
  for k in pairs(defs) do
    table.insert(sorted_keys, k)
  end
  table.sort(sorted_keys)

  for _, k in ipairs(sorted_keys) do
    table.insert(defs_lines, string.format('%s"%s": "%s"', string.rep(" ", indent), k, defs[k]))
  end

  return table.concat(defs_lines, ",\n")
end

--- @param colors table
function M.generate(colors)
  colors = vim.deepcopy(colors)

  -- Add missing color mappings
  if not colors.blue1 then
    colors.blue1 = colors.blue
  end
  if not colors.blue2 then
    colors.blue2 = colors.blue
  end
  if not colors.red1 then
    colors.red1 = colors.crimson
  end
  if not colors.green1 then
    colors.green1 = colors.teal
  end
  if not colors.fg_dark then
    colors.fg_dark = colors.fg2
  end
  if not colors.bg_dark then
    colors.bg_dark = colors.bg0
  end
  if not colors.bg_highlight then
    colors.bg_highlight = colors.bg3
  end
  if not colors.border_highlight then
    colors.border_highlight = colors.cyan
  end
  if not colors.dark3 then
    colors.dark3 = colors.fg3
  end
  if not colors.black then
    colors.black = colors.bg2
  end
  if not colors.fg_gutter then
    colors.fg_gutter = colors.fg3
  end

  -- Add git/diff colors if not present
  if not colors.git then
    colors.git = {
      add = colors.teal,
      delete = colors.crimson,
    }
  end
  if not colors.diff then
    colors.diff = {
      add = util.blend_bg(colors.teal, 0.20, colors.bg),
      delete = util.blend_bg(colors.crimson, 0.20, colors.bg),
    }
  end

  local defs = generate_defs(colors)
  colors.opencode_defs = format_defs_json(defs, 4)

  local opencode = util.template(
    [[{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
${opencode_defs}
  },
  "theme": {
    "primary": {
      "dark": "blue",
      "light": "blue"
    },
    "secondary": {
      "dark": "purple",
      "light": "purple"
    },
    "accent": {
      "dark": "orange",
      "light": "orange"
    },
    "error": {
      "dark": "red1",
      "light": "red1"
    },
    "warning": {
      "dark": "yellow",
      "light": "yellow"
    },
    "success": {
      "dark": "green",
      "light": "green"
    },
    "info": {
      "dark": "blue2",
      "light": "blue2"
    },
    "text": {
      "dark": "fg",
      "light": "fg"
    },
    "textMuted": {
      "dark": "fg_dark",
      "light": "fg_dark"
    },
    "background": {
      "dark": "bg",
      "light": "bg"
    },
    "backgroundPanel": {
      "dark": "bg_dark",
      "light": "bg_dark"
    },
    "backgroundElement": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "border": {
      "dark": "black",
      "light": "black"
    },
    "borderActive": {
      "dark": "border_highlight",
      "light": "border_highlight"
    },
    "borderSubtle": {
      "dark": "dark3",
      "light": "dark3"
    },
    "diffAdded": {
      "dark": "green1",
      "light": "green1"
    },
    "diffRemoved": {
      "dark": "red1",
      "light": "red1"
    },
    "diffContext": {
      "dark": "fg_dark",
      "light": "fg_dark"
    },
    "diffHunkHeader": {
      "dark": "comment",
      "light": "comment"
    },
    "diffHighlightAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffHighlightRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffAddedBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "diffContextBg": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "diffLineNumber": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "diffAddedLineNumberBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedLineNumberBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "markdownText": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHeading": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLink": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLinkText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCode": {
      "dark": "green",
      "light": "green"
    },
    "markdownBlockQuote": {
      "dark": "comment",
      "light": "comment"
    },
    "markdownEmph": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownStrong": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHorizontalRule": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "markdownListItem": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownListEnumeration": {
      "dark": "orange",
      "light": "orange"
    },
    "markdownImage": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownImageText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCodeBlock": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxComment": {
      "dark": "comment",
      "light": "comment"
    },
    "syntaxKeyword": {
      "dark": "green",
      "light": "green"
    },
    "syntaxFunction": {
      "dark": "crimson",
      "light": "crimson"
    },
    "syntaxVariable": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxString": {
      "dark": "fg1",
      "light": "fg1"
    },
    "syntaxNumber": {
      "dark": "gold",
      "light": "gold"
    },
    "syntaxType": {
      "dark": "yellow",
      "light": "yellow"
    },
    "syntaxOperator": {
      "dark": "fg2",
      "light": "fg2"
    },
    "syntaxPunctuation": {
      "dark": "fg_dark",
      "light": "fg_dark"
    }
  }
}]],
    colors
  )

  return opencode
end

return M
