-- init.lua
-- Author: @theteachr

require('lsp')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- require('cmp').setup.buffer { enabled = false }

-- Treesitter Settings {{{

require 'nvim-treesitter.configs'.setup { highlight = { enable = true } }

-- }}}

-- Telescope Settings {{{

require('telescope').setup {
	defaults = {
		file_ignore_patterns = { "target", "__pycache__" },
		path_display = { "tail" },
		sorting_strategy = "descending"
	}
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
vim.opt.number = false
vim.opt.relativenumber = true
vim.opt.background = 'dark'

vim.o.shortmess = vim.o.shortmess .. 'IFT'

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
	"\"+y",
	{ noremap = true, silent = true }
)

-- lsp

vim.api.nvim_set_keymap(
	"n",
	"<leader>l",
	"<cmd>Telescope lsp_document_symbols<CR>",
	{ noremap = true, silent = true }
)

vim.cmd([[
map Y y$
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
	"<leader>z",
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

-- fuzzy select colorscheme

vim.api.nvim_set_keymap(
	"n",
	"<leader>;",
	"<cmd>Telescope colorscheme<CR>",
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

require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = false,
	disable_italics = true,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' },
		EndOfBuffer = { fg = 'highlight_med' },
		CursorLineNr = { fg = 'love' },
	}
})

vim.g.everforest_background = 'hard'
vim.g.gruvbox_background = 'hard'

vim.g.ayucolor = 'mirage'

-- vim.ayucolor = 'dark'
-- vim.ayucolor = 'light'

-- vim.g.sonokai_style = 'espresso'
-- vim.g.sonokai_style = 'default'
-- vim.g.sonokai_style = 'andromeda'
-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_style = 'maia'
vim.g.sonokai_style = 'maia'

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
    },
})

-- Default options:
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = false },
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    colors = {},
    overrides = {},
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})

vim.cmd.colorscheme "kanagawa"

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

if not vim.g.neovide then
	vim.cmd([[
	highlight Normal ctermbg=none guibg=none
	highlight SignColumn ctermbg=none guibg=none
	highlight LineNr ctermbg=none guibg=none
	highlight NonText ctermbg=none guibg=none
	highlight EndOfBuffer ctermbg=none guibg=none
	highlight TelescopeBorder ctermbg=none guibg=none
	highlight TelescopeTitle ctermbg=none guibg=none
	]])
end
-- vim:fileencoding=utf-8:foldmethod=marker
