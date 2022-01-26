" init.vim
" Author: @theteachr

" Plugins {{{

call plug#begin()

" quality of life
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/Colorizer'

" syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" language specific
Plug 'rust-lang/rust.vim'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" colorschemes
Plug 'ajh17/spacegray.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'EdenEast/nightfox.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()

" }}}

" Treesitter Settings {{{

lua require 'nvim-treesitter.configs'.setup{ highlight = { enable = true } }

" ignore TS Errors
highlight link TSError Normal

" }}}

" Telescope settings {{{

lua require('telescope').setup{ defaults = { file_ignore_patterns = { "target" } } }

" }}}

" Options {{{

set noshowcmd
set cursorline cursorlineopt=number
set incsearch
set noruler
set tabstop=4
set shiftwidth=4
set smartcase
set smarttab
set ignorecase
set noexpandtab
set nohlsearch
set smartindent
set autoread
set hidden
set wrap
set relativenumber
set shortmess+=IFT
set termguicolors
set inccommand=split
set laststatus=0
set splitright
set splitbelow
set noswapfile
set nobackup
set nowritebackup
set listchars=tab:→\ ,eol:¬,space:·,trail:•,extends:⟩,precedes:⟨
set path+=**

" }}}

" Filetype Settings {{{

filetype plugin on
filetype indent on

" }}}

" Keymaps {{{

nnoremap <silent> <leader>s :set hlsearch!<CR>
nnoremap <silent> <leader>n :set relativenumber!<CR>

" split window
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" buffer navigation
nnoremap <silent> <leader>. :bn<CR>
nnoremap <silent> <leader>, :bp<CR>

" copy to system clip
vnoremap <silent> <leader>y "*y<CR>

map K k
map Y y$

map <Space> :

" telecope bindings
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

" show list
nnoremap <silent> <Esc> :set list!<CR>

" normal escape in terminal
tnoremap <Esc> <C-\><C-n>

" }}}

" Custom Text Objects {{{

omap ae :<C-U>silent! normal! ggVG<CR>
vnoremap ae :<C-U>silent! normal! ggVG<CR>

" }}}

" Colorscheme Settings {{{

" everforest
let g:everforest_background = 'hard'

" gruvbox
let g:gruvbox_background = 'hard'

" ayu [mirage|dark|light]
let ayucolor = 'dark'

" sonokai [default|atlantis|andromeda|shusia|maia|espresso]
let g:sonokai_style = 'espresso'


lua << EOF
require("catppuccin").setup({
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "NONE",
    strings = "NONE",
    variables = "NONE",
  },
  integrations = {
    treesitter = true,
  },
})
EOF

colorscheme gruvbox-material

" }}}

" Transparency {{{

highlight Normal ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=none

" }}}

" Auto Commands {{{

augroup CSNIPPET
	autocmd!
	autocmd BufNewFile *.c :0r ~/.config/nvim/snippets/c/boiler.c
augroup END

augroup Terminal
	autocmd!
	autocmd BufWinEnter,WinEnter term://* startinsert
augroup END

" }}}

" vim:fileencoding=utf-8:foldmethod=marker
