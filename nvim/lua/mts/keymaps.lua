-----------------------------------------------------------------------
-- Own Keymaps
-----------------------------------------------------------------------

-- Python
vim.keymap.set('n', '<leader>py', ':w<CR>:! python %<CR>',
	{desc = 'Write and Run Current Python File'})

-- Python
vim.keymap.set('n', '<leader>tx', ':w<CR>:! pdflatex %<CR>',
	{desc = 'Write and Compile Current LaTeX File'})

-- URL Open
vim.keymap.set('n', '<leader>ou', '<esc>:URLOpenUnderCursor<cr>',
	{desc = 'Open URL Under Cursor'})

-----------------------------------------------------------------------
-- LSP From https://github.com/nvim-lua/kickstart.nvim
-----------------------------------------------------------------------

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,
	{desc = '[R]e[n]ame'})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,
	{desc = '[C]ode [A]ction'})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
	{desc = '[G]oto [D]efinition'})
vim.keymap.set('n', 'gI', vim.lsp.buf.implementation,
	{desc = '[G]oto [I]mplementation'})
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition,
	{desc = 'Type [D]efinition'})
vim.keymap.set('n', 'K', vim.lsp.buf.hover,
	{desc = 'Hover Documentation'})
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help,
	{desc = 'Signature Documentation'})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,
	{desc = '[G]oto [D]eclaration'})
vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder,
	{desc = '[W]orkspace [A]dd Folder'})
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder,
	{desc = '[W]orkspace [R]emove Folder'})

vim.keymap.set(
	'n', '<leader>wl',
	function()
   		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end,
	{desc = '[W]orkspace [L]ist Folders'}
	)

-----------------------------------------------------------------------
---- From kickstart.nvim / Enable if I ever start using Telescope
-----------------------------------------------------------------------

--[[
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
--]]

-----------------------------------------------------------------------
-- Keybindings for moveline.nvim
-----------------------------------------------------------------------

local moveline = require('moveline')

-- Alt key
vim.keymap.set('n', '<A-k>', moveline.up)
vim.keymap.set('n', '<A-j>', moveline.down)
vim.keymap.set('v', '<A-k>', moveline.block_up)
vim.keymap.set('v', '<A-j>', moveline.block_down)
