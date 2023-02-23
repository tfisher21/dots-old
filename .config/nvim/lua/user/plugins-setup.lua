local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path,
		})
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- User a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" })

	-- color scheme
	use({ "folke/tokyonight.nvim" })

	-- Smart and powerful comment plugin for neovim
	use({ "numToStr/Comment.nvim" })

	-- All the lua functions I don't want to write twice
	use({ "nvim-lua/plenary.nvim" })

	-- Dev Icons (dependency for nvim-tree and lualine)
	use({ "nvim-tree/nvim-web-devicons" })
	-- A file explorer tree for neovim written in lua
	use({
		"nvim-tree/nvim-tree.lua",
		tag = "nightly",
	})

	-- A blazing fast and easy to configure neovim statusline plugin written in pure lua
	use({ "nvim-lualine/lualine.nvim" })

	-- Find, Filter, Preview, Pick. All lua, all the time
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- A completion plugin for neovim coded in Lua
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })

	-- Snippets --
	use({ "L3MON4D3/LuaSnip" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "rafamadriz/friendly-snippets" })

	-- LSP Setup --
	-- Easily install and manage LSP servers, DAP servers, linters, and formatters
	use({ "williamboman/mason.nvim" })
	-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
	use({ "williamboman/mason-lspconfig.nvim" })
	-- Quickstart configs for Nvim LSP
	use({ "neovim/nvim-lspconfig" })
	-- Servers
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use({ "jose-elias-alvarez/typescript.nvim" })
	use({ "onsails/lspkind.nvim" })
	-- Formatting & Linting
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "jayp0521/mason-null-ls.nvim" })

	-- Treesitter --
	-- Nvim Treesitter configurations and abstraction layer (Will fail upon first installation attempt)
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- autopairs for neovim written by lua
	use({ "windwp/nvim-autopairs" })
	-- Use treesitter to auto close and auto rename html tag
	use({ "windwp/nvim-ts-autotag" })

	-- Git integration for buffers
	use({ "lewis6991/gitsigns.nvim" })

	-- Create key bindings that stick.
	use({ "folke/which-key.nvim" })

	-- Packages to try later --
	-- tmux & split window navigation
	-- use { "alexghergh/nvim-tmux-navigation" } (I'm not ready to use this yet, will require a companion tmux plugin)

	if packer_bootstrap then
		require("packer").sync()
	end
end)
