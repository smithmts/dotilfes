-----------------------------------------------------------------------
-- Leader Key Setup
-----------------------------------------------------------------------

-- "\" is the default.  I don't need to define it.  Keep it here for
-- future consideration.
-- vim.g.mapleader = '\\'
-- vim.g.maplocalleader = '\\'


-----------------------------------------------------------------------
-- Source files in .lua/mts
-----------------------------------------------------------------------

require 'mts.lazy'
require 'mts.options'
require 'mts.treesitter'
require 'mts.lsp_config'
require 'mts.keymaps'
