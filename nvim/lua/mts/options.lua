-- [[View Options]]

-- Show relative line numbers
vim.o.relativenumber = true
-- Show actual line number on curent line
vim.o.number = true

-- Minimum number of lines to keep above and below cursor
vim.o.scrolloff = 8

-- Vertical lines at columns 72 and 80
vim.o.colorcolumn = "72,80"
-- Set color of colorcolumn
vim.cmd([[highlight ColorColumn ctermbg=DarkGrey]])

-- Highlight current line
vim.o.cursorline = true

-- [[Text Options]] 

--  Allow backspace over autoindent, end of line, and start of insert.
vim.o.backspace = "indent,eol,start"

-- Set number of spaces for autoindent
vim.o.shiftwidth = 4

-- Set number of spaces for <tab>
vim.o.tabstop 	= 4

-- Keep indent when text breaks to new line
vim.o.breakindent = true


-- [[Search Options]]

-- Disable last search remaining highlighted
vim.o.hlsearch 	= false

-- Case insensitive search
vim.o.ignorecase = true
-- Revert to case sensitive search when /C or capital in search
vim.o.smartcase = true


-- [[Theming]]

-- Use Adwaita colorscheme (see packer.lua for plugin install)
vim.cmd([[colorscheme adwaita]])


-- [[Misc Options]]

-- Use system clipboard
vim.o.clipboard = "unnamedplus"

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable hidden mode, allowing switching buffers without writing.
vim.o.hidden = true

-- Enaable spell check.
vim.o.spell = true

-- Highlight on Yank - taken from nvim-lua/kickstart.nvim 
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
