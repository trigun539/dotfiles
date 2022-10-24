-- BASE

vim.g.mapleader = ',' -- Leader key
vim.opt.backspace = 'indent,eol,start' -- Make backspace behave in a sane manner

-- Tabs

vim.opt.expandtab = true -- Replace tabs with spaces
vim.opt.smarttab = true -- Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
vim.opt.tabstop = 2 -- The visible width of tabs
vim.opt.shiftwidth = 2 -- Number of spaces to use for indent and unindent
vim.opt.softtabstop = 2 -- Edit as if the tabs are 4 characters wide
vim.opt.shiftround = true -- Round indent to a multiple of 'shiftwidth'

-- Code Folding

vim.opt.foldmethod = 'indent' -- Fold based on indent
vim.opt.foldnestmax = 10 -- Deepest fold is 10 levels
vim.opt.foldenable = false -- Don't fold by default
vim.opt.foldlevel = 1

-- Search

vim.opt.wildignore = {'*/cache/*', '*/tmp/*', '*/node_modules/*', '*/.git/*'}

-- Splits

vim.opt.splitright = true
vim.opt.splitbelow = true

-- File Handling

vim.opt.fileencodings = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.compatible = false -- not compatible with vi
vim.opt.autoread = true -- detect when a file is changed
vim.opt.swapfile = false -- Dont' create swap files
vim.opt.backup = false -- No backup

-- User Interface

vim.opt.cursorline = true
vim.g.colors_name = 'dracula' -- Theme
vim.opt.title = true
vim.opt.number = true
vim.opt.background = 'dark'
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10

-- No Sounds/Bells

vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.tm = 500

-- Performance

vim.opt.lazyredraw = true -- Don't redraw while executing macros
vim.opt.ttyfast = true -- Faster redrawing

-- Clipboard

vim.opt.clipboard = 'unnamed'

-- Utilities

-- Spelling
-- vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
