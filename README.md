# vim-lux

Vim and Neovim syntax highlighting and filetype plugin for the [Lux](https://github.com) automation language.

## Features

* Syntax highlighting for `.lux` configuration files
* Comment toggling (`#`) and 4-space indentation
* Built-in `:make` integration (`lux check`) with quickfix error navigation

## Installation

### [lazy.nvim](https://github.com) (Neovim)

```lua
{
  "lang-lux/vim-lux",
  ft = "lux",
}
```

### [vim-plug](https://github.com) (Vim / Neovim)

```vim
Plug 'lang-lux/vim-lux'
```

## License

MIT License
