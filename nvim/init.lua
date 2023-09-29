-- Set leader key. '\\' is really '\' to escape the escape.
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- Source files in lua/mts/
require "mts.lazy"
require "mts.options"
require "mts.treesitter"
require "mts.lsp_config"
require "mts.keymaps"
--require "mts.packer"
