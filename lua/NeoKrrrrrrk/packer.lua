vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
	
	-- Essential tools
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'

	-- Syntax highlighting, and context
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use 'nvim-treesitter/nvim-treesitter-context'
	use {
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,
			}
		end
	}

	-- Search and file navigation
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
            'nvim-telescope/telescope-live-grep-args.nvim'
		}
	}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'ThePrimeagen/harpoon'
	use {
        'VonHeikemen/searchbox.nvim',
        requires = {
            {'MunifTanjim/nui.nvim'}
        }
    }
	use {
		'nvim-tree/nvim-tree.lua',
		requires = 'nvim-tree/nvim-web-devicons',
		tag = 'nightly'
	}
	
	-- LSP and completion
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	-- Git integration
	use 'zivyangll/git-blame.vim'
	use 'lewis6991/gitsigns.nvim'
	use "tpope/vim-fugitive"

	-- UI enhancements
	use 'nvim-lualine/lualine.nvim'
	use {
		'numToStr/Comment.nvim',
		config = function() require('Comment').setup() end
	}
	use 'akinsho/bufferline.nvim'
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use "akinsho/toggleterm.nvim"
	use "lukas-reineke/indent-blankline.nvim"
	use "JoosepAlviste/nvim-ts-context-commentstring"
	use 'rmagatti/auto-session'
	use {
		"folke/which-key.nvim",
		config = function() require("which-key").setup {} end
	}
	use 'preservim/tagbar'
	use "mbbill/undotree"
	use("folke/zen-mode.nvim")
	use("eandrju/cellular-automaton.nvim")

	-- Themes
	-- use 'EdenEast/nightfox.nvim'
	-- use 'folke/tokyonight.nvim'
	-- use 'tomasiser/vim-code-dark'
	-- use 'martinsione/darkplus.nvim'
	-- use 'Mofiqul/vscode.nvim'
	-- use { "catppuccin/nvim", as = "catppuccin" }
	-- use {'nyoom-engineering/oxocarbon.nvim'}
	-- use {'rktjmp/lush.nvim'}
	-- use {'JLighter/aura.nvim'}
	-- use 'navarasu/onedark.nvim'
	-- use "rebelot/kanagawa.nvim"
	use 'wuelnerdotexe/vim-enfocado'

	-- Specialized plugins
	-- use 'ThePrimeagen/vim-be-good'
	use "laytan/cloak.nvim"

end)

