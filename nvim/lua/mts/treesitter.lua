require 'nvim-treesitter.configs'.setup {
  -- Install parcers 
  ensure_installed = { "lua", "python", "vim", "bash", "markdown"},

  highlight = {
  -- Enable highlighting
    enable = true,
  },
}
