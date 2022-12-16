-- Package Management

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup(function(use)
	-- PLUGINS

	if vim.fn.has("nvim") == 1 then
		use("wbthomason/packer.nvim")
		-- Icons
		use("kyazdani42/nvim-web-devicons")
		-- Utilities
		use("windwp/nvim-autopairs")
		use("windwp/nvim-ts-autotag")
		use("tpope/vim-commentary")
		use("mg979/vim-visual-multi")
		use("wesQ3/vim-windowswap")
		use("ruanyl/vim-gh-line")
		-- Themes
		use("Mofiqul/dracula.nvim")
		use("navarasu/onedark.nvim")
		use("catppuccin/nvim")
		-- UI
		use("hoob3rt/lualine.nvim")
		use("myusuf3/numbers.vim")
		use("norcalli/nvim-colorizer.lua")
		use("p00f/nvim-ts-rainbow")
		use("glepnir/dashboard-nvim")
		-- LSP
		use("neovim/nvim-lspconfig")
		use("williamboman/nvim-lsp-installer")
		use("tami5/lspsaga.nvim")
		use("jose-elias-alvarez/null-ls.nvim")
		use("jose-elias-alvarez/nvim-lsp-ts-utils")
		use({
			"folke/lsp-trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
		})
		use("WhoIsSethDaniel/toggle-lsp-diagnostics.nvim")
		-- Treesitter
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		-- Completion
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("hrsh7th/nvim-cmp")
		use("onsails/lspkind-nvim") -- Icon support for comp
		use("f3fora/cmp-spell") -- Spelling
		-- Ultisnips, cmp support
		use("SirVer/ultisnips")
		use("quangnguyen30192/cmp-nvim-ultisnips")
		-- Telescope
		use("nvim-lua/plenary.nvim")
		use("nvim-telescope/telescope.nvim")
		use({ "nvim-telescope/telescope-fzy-native.nvim" })
		use({ "nvim-telescope/telescope-file-browser.nvim" })
		-- Mappings
		use("b0o/mapx.nvim") -- Easy Mappings
		-- Git
		use("tpope/vim-fugitive")
		-- Tree
		use("kyazdani42/nvim-tree.lua")
		-- Languages
		-- - Clojure
		use("Olical/conjure")
		use("Olical/aniseed")
		use("Olical/fennel.vim")
		use("tpope/vim-dispatch")
		use("clojure-vim/vim-jack-in")
		use("radenling/vim-dispatch-neovim")
		-- AI
		use({
			"jackMort/ChatGPT.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
		})
	end

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	-- if packer_bootstrap then
	-- require('packer').sync()
	-- end
end)
