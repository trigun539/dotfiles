vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'
		-- Icons
		use("kyazdani42/nvim-web-devicons")
		-- Utilities
		use("windwp/nvim-autopairs")
		use("tpope/vim-commentary")
		use("mg979/vim-visual-multi")
		use("wesQ3/vim-windowswap")
		use("ruanyl/vim-gh-line")
		use("github/copilot.vim")
		-- Themes
		use("Mofiqul/dracula.nvim")
		-- use("navarasu/onedark.nvim")
		-- use("catppuccin/nvim")
		-- UI
		use("hoob3rt/lualine.nvim")
		use("myusuf3/numbers.vim")
		use("norcalli/nvim-colorizer.lua")
		use("glepnir/dashboard-nvim")
    use("chriskempson/base16-vim")
		-- LSP
    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional
        {'onsails/lspkind-nvim'},
        {'hrsh7th/cmp-cmdline'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
      }
    }
    use {
      "jose-elias-alvarez/null-ls.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    }
		-- Treesitter
		use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
		-- Completion
		-- Ultisnips, cmp support
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
		-- AI
		use({
			"jackMort/ChatGPT.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim",
			},
		})
end)
