return require('packer').startup(function(use)
	-- quality of life

	use 'tpope/vim-fugitive'
	use 'tpope/vim-surround'
	use 'chrisbra/Colorizer'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	-- syntax

	use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
	use 'nvim-treesitter/playground'

	-- language specific

	use 'rust-lang/rust.vim'

	-- telescope

	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- colorschemes

	use 'ajh17/spacegray.vim'
	use 'arcticicestudio/nord-vim'
	use 'ayu-theme/ayu-vim'
	use 'bluz71/vim-nightfly-guicolors'
	use { 'folke/tokyonight.nvim', { branch = 'main' } }
	use 'ntk148v/vim-horizon'
	use 'nanotech/jellybeans.vim'
	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/sonokai'
	use 'EdenEast/nightfox.nvim'
	use 'savq/melange'
	use 'RRethy/nvim-base16'
	use { "catppuccin/nvim", as = "catppuccin" }

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		tag = 'v1.*',
	})

	use 'xolox/vim-misc'
	use 'xolox/vim-colorscheme-switcher'
end)
