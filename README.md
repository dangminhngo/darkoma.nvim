<h1 align="center">Darkoma</h1>
<br />
<p align="center">
  <a href="https://github.com/jadnw/darkoma.nvim/stargazers"><img src="https://img.shields.io/github/stars/jadnw/darkoma.nvim?colorA=1b2125&colorB=73aace&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/darkoma.nvim/issues"><img src="https://img.shields.io/github/issues/jadnw/darkoma.nvim?colorA=1b2125&colorB=f08789&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/darkoma.nvim/contributors"><img src="https://img.shields.io/github/contributors/jadnw/darkoma.nvim?colorA=1b2125&colorB=83c1ae&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/darkoma.nvim/network/members"><img src="https://img.shields.io/github/forks/jadnw/darkoma.nvim?colorA=1b2125&colorB=b3a8f9&style=for-the-badge"></a>
</p>

<p align="center">
  A customizable dark colorscheme for NeoVim 0.6+ with LSP, TreeSitter and a variety of plugins support.
</p>

## Table of contents

- [Requirements](#requirements)
- [Palette](#palette)
- [Installation](#Installation)
- [Setup](#setup)
- [Supported Plugins](#supported-plugins)
- [References](#references)

## Requirements

- Neovim >= 0.5.0

## Palette

Darkoma saves your eyestraints with a dark background and a pastel palette.

<div align="center">
  <img 
    src="https://raw.githubusercontent.com/jadnw/darkoma.nvim/main/media/palette.svg"
    alt="darkoma Palette"
  />
</div>

## Installation

You can install Darkoma via your favorite plugin manager:

- Vim-Plug
```vim
Plug "jadnw/darkoma.nvim"
```

- Packer
```lua
use { "jadnw/darkoma.nvim" }
```

For a complete guide, see ```:h darkoma.nvim```

## Setup

Place the following code somewhere in your nvim config (after loading plugins)

```lua
require("darkoma").setup {}
-- Run command after the setup function
vim.cmd("colorscheme darkoma")
```

### Default options

This is an example darkoma setup with default values

```lua
require("darkoma").setup {
  accent = "green", -- values: "orange", "teal", "white", "cyan", "green", "magenta", "purple", "red", "blue", "yellow"
  style = "default", -- values: "default", "soft", "hard" 
  options = {
    transparent = false, -- if true, background is transparent
    terminal_colors = true, -- if true, set terminal colors
    -- set style: "NONE", "italic", "bold", "underline", "undercurl"
    styles = {
      attributes = "NONE",
      booleans = "NONE",
      comments = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      parameters = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    -- set invert colors
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
    -- enable plugin highlightings
    plugins = {
      bufferline = true,
      cmp = true,
      dashboard = true,
      diagnostic = {
        enable = true,
        background = true,
      },
      gitsigns = true,
      illuminate = true,
      lspsaga = true,
      lsp_signature = true,
      notify = true,
      nvimtree = true,
      scrollbar = true,
      telescope = true,
      treesitter = true,
      trouble = true,
      tsrainbow = true,
      whichkey = true,
    },
  }
}
```

## Supported Plugins

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## References

- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
