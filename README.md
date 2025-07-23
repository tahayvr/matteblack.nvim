# matteblack.nvim (WIP)

A Matte Black colorscheme for Neovim.

## Screenshots

TBD: Screenshots will be added soon.

<!--
## Features

- 🌒 **Matte Black aesthetic** - Deep, rich blacks with carefully chosen accent colors
- 🎨 **Comprehensive treesitter support** - Semantic syntax highlighting for modern code editing
- 🍿 **Snacks.nvim integration** - Beautiful theming for dashboard, picker, notifier, and all components
- 📊 **Lualine theme included** - Matching statusline colors
- 🎯 **Consistent color palette** - Harmonious colors across all UI elements
 -->

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

## Configuration

### Basic Usage

```lua
-- Apply the complete theme (includes treesitter and Snacks support)
require("matteblack").colorscheme()

-- Or use the traditional method
vim.cmd.colorscheme "matteblack"
```

<!--
### Lualine Integration

```lua
require('lualine').setup {
  options = {
    theme = require("matteblack").lualine()
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
| gray2      | `#61AFEF` | Functions, headings       |
| Yellow     | `#E5C07B` | Types, constructors       |
| Magenta    | `#C678DD` | Keywords, control flow    |
| gray1      | `#98C379` | Strings, positive changes |
| Red        | `#B91C1C` | Errors, exceptions        |
| Orange     | `#F59E0B` | Numbers, warnings         |
| amber      | `#56B6C2` | Constants, properties     |
| Pink       | `#E06C75` | Parameters                |
| Gray       | `#5C6370` | Comments, delimiters      |
-->

## Contributing

Pull requests and issues are welcome! Please open an issue to discuss your ideas or report bugs.

## License

MIT
