return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

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

	-- lsp

	-- collection of common configurations for the nvim lsp client
	use 'neovim/nvim-lspconfig'

	-- completion framework
	use 'hrsh7th/nvim-cmp'

	-- lsp completion source for nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp'

	-- snippet completion source for nvim-cmp
	use 'hrsh7th/cmp-vsnip'

	-- other usefull completion sources
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'

	-- see hrsh7th's other plugins for more completion sources!

	-- to enable more of the features of rust-analyzer, such as inlay hints and more!
	use 'simrat39/rust-tools.nvim'

	-- snippet engine
	use 'hrsh7th/vim-vsnip'
	use 'onsails/lspkind.nvim'

end)
