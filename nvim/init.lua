-- init.lua
-- Author: @theteachr

require('lsp')

-- Treesitter Settings {{{

require 'nvim-treesitter.configs'.setup { highlight = { enable = true } }

-- }}}

-- Telescope Settings {{{

require('telescope').setup {
	defaults = {
		file_ignore_patterns = { "target", "__pycache__" },
		path_display = { "tail" },
		sorting_strategy = "descending"
	},
}

-- }}}

-- Options {{{

vim.opt.showcmd = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.incsearch = true
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.ignorecase = false
vim.opt.expandtab = false
vim.opt.hlsearch = false
vim.opt.smartindent = true
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.wrap = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd("set shortmess+=IFT")

vim.opt.termguicolors = true
vim.opt.inccommand = "split"
vim.opt.laststatus = 0
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.listchars = "tab:→ ,eol:¬,space:·,trail:•,extends:⟩,precedes:⟨"

vim.cmd("set path+=**")

vim.opt.signcolumn='yes:1'

-- }}}

-- File Tree Settings {{{

require("nvim-tree").setup {
renderer = {
	icons = {
		show = {
			file = true,
			folder = true,
			folder_arrow = true,
			git = true,
		},
	},
},
}

vim.api.nvim_set_keymap(
	"n",
	"<C-n>",
	":NvimTreeToggle<CR>",
	{ noremap = true, silent = true }
)

-- }}}

-- Filetype Settings {{{

vim.cmd([[
filetype plugin on
filetype indent on
]])

-- }}}

-- Keymaps {{{

vim.api.nvim_set_keymap(
	"n",
	"<leader>s",
	":set hlsearch!<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>n",
	":set relativenumber!<CR>",
	{ noremap = true, silent = true }
)

-- split window

vim.api.nvim_set_keymap(
	"n",
	"<C-h>",
	"<C-w>h",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<C-j>",
	"<C-w>j",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<C-k>",
	"<C-w>k",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<C-l>",
	"<C-w>l",
	{ noremap = true, silent = true }
)

-- buffer navigation

vim.api.nvim_set_keymap(
	"n",
	"<leader>,",
	":bp<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>.",
	":bn<CR>",
	{ noremap = true, silent = true }
)

-- copy to system clip

vim.api.nvim_set_keymap(
	"v",
	"<leader>y",
	"\"+y<CR>",
	{ noremap = true, silent = true }
)

vim.cmd([[
map Y y$
map <Space> :
]])

-- telecope bindings

vim.api.nvim_set_keymap(
	"n",
	"<leader>f",
	"<cmd>Telescope find_files<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>g",
	"<cmd>Telescope live_grep<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>b",
	"<cmd>Telescope buffers<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>h",
	"<cmd>Telescope help_tags<CR>",
	{ noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>o",
	"<cmd>Telescope oldfiles<CR>",
	{ noremap = true, silent = true }
)

-- show list

vim.api.nvim_set_keymap(
	"n",
	"<Esc>",
	":set list!<CR>",
	{ noremap = true, silent = true }
)

-- normal escape in terminal

vim.api.nvim_set_keymap(
	"t",
	"<Esc>",
	"<C-\\><C-n>",
	{ noremap = true, silent = true }
)

-- }}}

-- Custom Text Objects {{{

vim.cmd([[
omap ae :<C-U>silent! normal! ggVG<CR>
vnoremap ae :<C-U>silent! normal! ggVG<CR>
]])

-- }}}

-- Colorscheme Settings {{{

vim.g.everforest_background = 'hard'
vim.g.gruvbox_background = 'hard'

vim.ayucolor = 'mirage'

-- vim.ayucolor = 'dark'
-- vim.ayucolor = 'light'

-- vim.g.sonokai_style = 'espresso'
-- vim.g.sonokai_style = 'default'
-- vim.g.sonokai_style = 'andromeda'
-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_style = 'maia'
vim.g.sonokai_style = 'atlantis'

require("catppuccin").setup({
	styles = {
		comments = "NONE",
		functions = "NONE",
		keywords = "NONE",
		strings = "NONE",
		variables = "NONE",
	},
	integrations = {
		treesitter = true,
	},
})

vim.cmd("colorscheme everforest")

-- }}}

-- Auto Commands {{{

vim.cmd([[

augroup NEW_FILE_SNIPS
autocmd!
	autocmd BufNewFile *.c :0r ~/.config/nvim/snippets/c/new.c
	autocmd BufNewFile *.java :0r ~/.config/nvim/snippets/java/new.java
	autocmd BufNewFile *.py :0r ~/.config/nvim/snippets/python/new.py
augroup END

augroup Terminal
	autocmd!
	autocmd BufWinEnter,WinEnter term://* startinsert
augroup END

]])

-- }}}

-- Neovide {{{

-- Colorscheme {{{

if vim.g.neovide then
	vim.cmd("colorscheme catppuccin")
end

-- }}}

vim.opt.guifont = "JetBrainsMono Nerd Font Mono:h18"

-- Launch full screen

vim.g.neovide_fullscreen = false

-- Cursor animations

vim.g.neovide_cursor_vfx_mode = "pixiedust"

-- vim.g.neovide_cursor_vfx_mode = "railgun"
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
-- vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- vim.g.neovide_cursor_vfx_mode = "ripple"
-- vim.g.neovide_cursor_vfx_mode = "wireframe"

-- Particle properties

vim.g.neovide_cursor_vfx_opacity = 200.0
vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
vim.g.neovide_cursor_vfx_particle_density = 64.0
vim.g.neovide_cursor_vfx_particle_speed = 10.0
vim.g.neovide_cursor_vfx_particle_phase = 1.5
vim.g.neovide_cursor_vfx_particle_curl = 1.0

-- }}}

-- Transparency {{{

if not vim.g.neovide then
	vim.cmd([[
	highlight Normal ctermbg=none guibg=none
	highlight EndOfBuffer ctermbg=none guibg=none
	]])
end

-- }}}

-- vim:fileencoding=utf-8:foldmethod=marker
