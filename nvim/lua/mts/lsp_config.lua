-----------------------------------------------------------------------
-- Create command (on buffer attach) to format with LSP 
-----------------------------------------------------------------------

--  Wrapper function to run the function on buffer attach
local on_attach = function(_, bufnr)

  -- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    	vim.lsp.buf.format()
		end,
	{ desc = 'Format current buffer with LSP' }
	)

end


-----------------------------------------------------------------------
-- Enable Language Servers
-----------------------------------------------------------------------

local servers = {
	lua_ls = {},
  	pylsp = {},
	sqlls = {},
	texlab = {},
    bashls = {},
    html = {},
    cssls = {},
    ltex = {
        language = 'en-US',
        filetypes = { 'markdown', 'tex', 'asciidoc' },
    },
}


-----------------------------------------------------------------------
-- Setup mason.nvim
-----------------------------------------------------------------------

-- Setup mason so it can manage external tooling
require('mason').setup()
require('mason-lspconfig').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}


require('lspconfig')['ltex'].setup({
  on_attach = on_attach,
  cmd = { "ltex-ls" },
  filetypes = { "markdown", "tex", "asciidoc" },
  flags = { debounce_text_changes = 300 },
})
