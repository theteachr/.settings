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
	use 'nanotech/jellybeans.vim'
	use 'sainnhe/everforest'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/sonokai'
	use 'EdenEast/nightfox.nvim'
	use { 'theteachr/nvim', { as = 'catppuccin' } }
	use 'savq/melange'
	use 'RRethy/nvim-base16'
end)
