-----------------------------------------------------------------------
-- Install Plugin Manager: Lazy (https://github.com/folke/lazy.nvim)
-----------------------------------------------------------------------

-- Check for the Lazy plugin and clone from Github repo if needed.
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


-----------------------------------------------------------------------
-- Begin Lazy Setup
-----------------------------------------------------------------------

require('lazy').setup(

-----------------------------------------------------------------------
---- Install Plugins
-----------------------------------------------------------------------
    {
        -- Treesitter: Enhanced Highlighting/Editing/Navigation of Code
        {
            'nvim-treesitter/nvim-treesitter',
            build = ":TSUpdate",
            dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', },
        },


        -- Colorscheme supporting treesiter
        {
            'Mofiqul/adwaita.nvim',
            -- Ensure that it loads early
            lazy = false,
            priority = 1000,
            -- Configure and set the theme
            config = function()
                vim.g.adwaita_darker = true
                vim.cmd.colorscheme('adwaita')
            end,
        },

        -- LSP Plugins
        {
            -- Allows LSP Configuration
            'neovim/nvim-lspconfig',
            dependencies = {
                -- LSP Package Manager
                'williamboman/mason.nvim',
                -- Bridge between Mason and LSPConfig
                'williamboman/mason-lspconfig.nvim',
                -- Enhanced configuation for lua_ls LSP
                'folke/neodev.nvim',
            },
        },

        -- Popup keybindings help menu
        { 'folke/which-key.nvim',   opts = {} },

        -- Dynamic colorcolumns
        { 'Bekaboo/deadcolumn.nvim' },

        -- { 'hiphish/rainbow-delimiters.nvim' },

        -- Backseat driver for Vim
        {
            "m4xshen/hardtime.nvim",
            dependencies = {
                "MunifTanjim/nui.nvim",
                "nvim-lua/plenary.nvim",
            },
            -- Only scold for repeat keys, not block.
            opts = { restriction_mode = "hint" }
        },

        -- Color code highlighter
        {
            'NvChad/nvim-colorizer.lua',
            opts = { mode = "foreground" }
        },

        -- Keybindings to move lines up and down
        {
            'willothy/moveline.nvim',
            build = 'make',
        },

        {
            "sontungexpt/url-open",
            event = "VeryLazy",
            cmd = "URLOpenUnderCursor",
            config = function()
                local status_ok, url_open = pcall(require, "url-open")
                if not status_ok then
                    return
                end
                url_open.setup ({})
            end,
        },

        {
            'numToStr/Comment.nvim',
            lazy = false,
        },


    },

-----------------------------------------------------------------------
---- Deviate from Lazy Defaults
-----------------------------------------------------------------------
    {

        -- Use colorscheme for Lazy
        colorscheme = { 'adwaita' },

    }

)


-----------------------------------------------------------------------
---- Required On-Liner Setups
-----------------------------------------------------------------------

-- numToStr/Comment.nvim
require('Comment').setup()
