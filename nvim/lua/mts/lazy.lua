-- Install package manager
--    https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Begin installation of plugins
require('lazy').setup({

	{ -- Treesitter to highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate", -- kickstart.nvim used a `configure` function, which seemed to be triggring "All parcers..." message at startup.
   	 	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
   	 	},
	},

	-- Colorscheme(s) supporting treesiter
 	'Mofiqul/adwaita.nvim',

	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		-- { 'j-hui/fidget.nvim', opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		'folke/neodev.nvim',
		},
	},

	-- which-key: Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim', opts = {} },

}) --End plugin installs
		vim.g.adwaita_darker = true -- darker theme version
