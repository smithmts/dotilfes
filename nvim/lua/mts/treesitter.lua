require 'nvim-treesitter.configs'.setup {

  -- Install parcers 
  ensure_installed = { "lua", "python", "vim", "bash", "markdown"},

  -- Enable highlighting
  highlight = {
    enable = true,
  },

}
