# Kushal's Neovim Config

This is a fork of [folke/kickstart.nvim](https://github.com/folke/kickstart.nvim) with some extra plugins and customizationsto be more fit for cpp development.

## Quick Install

NOTE: The neovim version in apt is old so you need to compile it from source.

1. **Dependencies:**  
   Make sure you have: `neovim` (latest), `git`, `ripgrep`, `fd`, `make`, `gcc`, and a [Nerd Font](https://www.nerdfonts.com/) (for icons).

2. **Clone my config:**

   ```sh
   git clone https://github.com/kushp/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

## Plugins

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) — plugin manager
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — better syntax highlighting
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — git integration
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP support
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — autocompletion
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) — snippets
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) — easy commenting
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) — git commands
- [tpope/vim-surround](https://github.com/tpope/vim-surround) — surround text objects

- Folder Structure
  - The config folder is the main folder for the neovim binding and imports of plugins/
  - The plugins folder is where you can put your own plugins. Just make a new folder and import it.
  - Import the plugin to lazy.lua file.

## OS-specific Install

- **Ubuntu:**
  ```
  sudo apt update
  sudo apt install neovim git ripgrep fd-find make gcc unzip xclip
  ```

---

Happy hacking! 🚀
