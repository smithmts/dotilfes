require 'nvim-treesitter.configs'.setup {
  -- Install parcers 
  ensure_installed = { "lua", "python", "vim"},

  highlight = {
  -- Enable highlighting
    enable = true,
  },
}
