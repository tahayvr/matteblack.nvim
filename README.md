# matteblack.nvim (WIP)

A Matte Black colorscheme for Neovim.

## Screenshots

TBD: Screenshots will be added soon.

## Features

- 🌒 **Matte Black aesthetic** - Deep, rich blacks with carefully chosen accent colors
- 🎨 **Comprehensive treesitter support** - Semantic syntax highlighting for modern code editing
- 🔌 **20+ plugin integrations** - Beautiful theming for popular Neovim plugins
- 🎯 **Highly customizable** - Transparent backgrounds, style overrides, and color callbacks
- 📊 **Lualine theme included** - Matching statusline colors
- 🖥️ **External themes** - Generate themes for ghostty, fzf, lazygit, opencode, and many more
- 🎛️ **Style configurations** - Customize comments, keywords, functions, variables, sidebars, and floats

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "tahayvr/matteblack.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "matteblack"
  end,
}
```

I've only tested this with lazy.nvim, but it should work with other plugin managers.

## Advanced Configuration

```lua
require("matteblack").setup({
  -- Enable transparent background
  transparent = false,

  -- Enable terminal colors
  terminal_colors = true,

  -- Style configurations
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    sidebars = "dark",        -- "dark", "transparent"
    floats = "dark",          -- "dark", "transparent"
  },

  -- Dim inactive windows
  dim_inactive = false,

  -- Customize colors
  on_colors = function(colors)
    colors.orange = "#FF8800"  -- Override colors
  end,

  -- Customize highlight groups
  on_highlights = function(highlights, colors)
    highlights.Comment = { fg = colors.gray, italic = true }
  end,
})

-- Then load the colorscheme
vim.cmd.colorscheme "matteblack"
```

## Supported Plugins

matteblack.nvim includes built-in support for the following plugins:

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

## External Themes

Generate matching themes for your terminal and tools:

```lua
require("matteblack.extra").setup()
```

This will generate theme files in `extras/` directory for:

- **[btop](https://github.com/aristocratos/btop)** - [extras/btop/matteblack.theme](extras/btop/matteblack.theme)
- **[delta](https://github.com/dandavison/delta)** - [extras/delta/matteblack.gitconfig](extras/delta/matteblack.gitconfig)
- **[fzf](https://github.com/junegunn/fzf)** - [extras/fzf/matteblack.sh](extras/fzf/matteblack.sh)
- **[Ghostty](https://ghostty.org/)** - [extras/ghostty/matteblack](extras/ghostty/matteblack)
- **[Lazygit](https://github.com/jesseduffield/lazygit)** - [extras/lazygit/matteblack.yml](extras/lazygit/matteblack.yml)
- **[OpenCode](https://opencode.ai)** - [extras/opencode/matteblack.json](extras/opencode/matteblack.json)
- **[Pygments](https://pygments.org)** - [extras/pygments/matteblack.py](extras/pygments/matteblack.py)
- **[Slack](https://slack.com)** - [extras/slack/matteblack.txt](extras/slack/matteblack.txt)
- **[Sublime Text](https://www.sublimetext.com/)** - [extras/sublime/matteblack.tmTheme](extras/sublime/matteblack.tmTheme)
- **[Xcode](https://developer.apple.com/xcode/)** - [extras/xcode/matteblack.xccolortheme](extras/xcode/matteblack.xccolortheme)

## Configuration

### Basic Usage

```lua
-- Apply the complete theme (includes treesitter and Snacks support)
require("matteblack").load()

-- Or use the traditional method
vim.cmd.colorscheme "matteblack"
```

### Lualine Integration

```lua
require('lualine').setup {
  options = {
    theme = 'matteblack'
  }
}
```

### Snacks.nvim Support

The theme includes comprehensive support for [Snacks.nvim](https://github.com/folke/snacks.nvim) components:

- **Dashboard** - Beautiful start screen with themed elements
- **Picker** - File finder and fuzzy picker theming
- **Notifier** - Notification popup styling
- **Terminal** - Floating terminal theming
- **Explorer** - File browser integration
- **Input** - Enhanced input dialogs
- **And more!** - Full coverage of all Snacks components

```lua
-- Snacks theming is applied automatically with the main theme
-- Or apply Snacks theming separately:
require("matteblack").snacks()
```

### Treesitter Support

The theme includes extensive treesitter highlight groups for:

- **Core Language Elements** - Functions, variables, types, keywords
- **Advanced Features** - Comments (with todos/warnings), markup, regex
- **Language-Specific** - Enhanced support for Lua, Python, JavaScript/TypeScript
- **Semantic Highlighting** - Context-aware syntax coloring

No additional configuration needed - treesitter highlights are included automatically!

## Color Palette

| Color      | Hex       | Usage                     |
| ---------- | --------- | ------------------------- |
| Background | `#121212` | Main background           |
| Foreground | `#EAEAEA` | Main text                 |
| Crimson    | `#DC2626` | Functions, errors         |
| Yellow     | `#FBBF24` | Types, constructors       |
| Green      | `#059669` | Keywords, control flow    |
| Teal       | `#10B981` | Booleans, success         |
| Red        | `#B91C1C` | Critical errors           |
| Orange     | `#F59E0B` | Warnings                  |
| Gold       | `#EFBF04` | Numbers, literals         |
| Amber      | `#D97706` | Constants, properties     |
| Blue       | `#3B82F6` | Includes, hints           |
| Purple     | `#8D20B2` | Special keywords          |
| Cyan       | `#1EA7A0` | Utilities                 |
| Pink       | `#F87171` | Visual elements           |
| Magenta    | `#B027DE` | Special syntax            |
| Gray       | `#5C6370` | Comments, delimiters      |

## Contributing

Pull requests and issues are welcome! Please open an issue to discuss your ideas or report bugs.

## License

MIT
