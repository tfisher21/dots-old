local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" --use-package inspired plugin/package management for Neovim 

  use {
   "nvim-treesitter/nvim-treesitter", -- provide a simple and easy way to use the interface for tree-sitter in Neovim 
   run = ":TSUpdate",
  }
  use "nvim-lua/popup.nvim" --An implementation of the Popup API from vim in Neovim 
  use "nvim-lua/plenary.nvim" --All the lua functions I don't want to write twice 
  use "nvim-telescope/telescope.nvim" -- a highly extendable fuzzy finder over lists
  use {
    "kyazdani42/nvim-tree.lua", -- A File Explorer For Neovim Written In Lua
    requires = {'kyazdani42/nvim-web-devicons'}, -- optional for icons
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use "windwp/nvim-autopairs" -- A super powerful autopair plugin for Neovim that supports multiple characters.
  use "lewis6991/gitsigns.nvim" -- Super fast git decorations implemented purely in lua/teal.

  -- Colorschemes
  use "Mofiqul/dracula.nvim" -- Dracula colorscheme for NEOVIM written in Lua
  use "folke/tokyonight.nvim" -- A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins
  use { "catppuccin/nvim", as = "catppuccin" } -- Soothing pastel theme for the high-spirited!

  -- cmp plugins
  use "hrsh7th/nvim-cmp" --A completion engine plugin for neovim written in Lua
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-path" -- nvim-cmp source for filesystem paths
  use "hrsh7th/cmp-cmdline" --nvim-cmp source for vim's cmdline 
  use "saadparwaiz1/cmp_luasnip" --luasnip completion source for nvim-cmp 
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim's built-in language server client
  use "hrsh7th/cmp-nvim-lua" -- nvim-cmp source for neovim Lua API.

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" --Snippets collection for a set of different programming languages for faster development 

  -- LSP
  use "neovim/nvim-lspconfig" -- Configurations for Nvim LuaSnip
  use "williamboman/nvim-lsp-installer" -- plugin that allow you to manage LSP servers (NOTE: This has been deprecated and recommends migrating to mason.nvim)

  -- Notetaking
  use 'renerocksai/telekasten.nvim' -- A Neovim (lua) plugin for working with a text-based, markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim.


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
