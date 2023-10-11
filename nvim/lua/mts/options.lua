-----------------------------------------------------------------------
-- View Options
-----------------------------------------------------------------------

-- Show relative line numbers
vim.opt.relativenumber = true
-- Show actual line number on current line
vim.opt.number = true

-- Minimum number of lines to keep above and below cursor
vim.opt.scrolloff = 8

-- Vertical lines at columns 72 and 80
vim.api.nvim_set_option_value('colorcolumn', '72,80', {})

-- Highlight current line
vim.opt.cursorline = true

-----------------------------------------------------------------------
-- Text Options
-----------------------------------------------------------------------

--  Allow backspace over auto-indent, end of line, and start of insert.
vim.opt.backspace = 'indent,eol,start'

-- Set number of spaces for auto-indent
vim.opt.shiftwidth = 4

-- Set number of spaces for <tab>
vim.opt.tabstop 	= 4

-- Keep indent when text breaks to new line
vim.opt.breakindent = true

-- BANISH tabs
vim.opt.expandtab = true


-----------------------------------------------------------------------
-- Search Options
-----------------------------------------------------------------------

-- Disable last search remaining highlighted
vim.opt.hlsearch 	= false

-- Case insensitive search
vim.opt.ignorecase = true
-- Revert to case sensitive search when /C or capital in search
vim.opt.smartcase = true


-----------------------------------------------------------------------
-- Theming
-----------------------------------------------------------------------

-- Enable Terminal GUI Colors (more than 256 colors)
vim.opt.termguicolors = true

-- Colorscheme configured with plugin install

-----------------------------------------------------------------------
-- Misc Options
-----------------------------------------------------------------------

-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable hidden mode, allowing switching buffers without writing.
vim.opt.hidden = true

-- Enaable spell check.
-- vim.opt.spell = true
-- Disabled.  To irritating for non-prose files.  Need to look into
-- how to handle that better.  I'm sure a solution is there.

-- Highlight on Yank - taken from nvim-lua/kickstart.nvim 
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup(
	'YankHighlight', { clear = true }
   )

vim.api.nvim_create_autocmd('TextYankPost', {
   callback = function()
	   vim.highlight.on_yank()
   end,
   group = highlight_group,
   pattern = '*',
   })
