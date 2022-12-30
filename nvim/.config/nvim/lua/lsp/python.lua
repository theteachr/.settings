local config = require('lspconfig')

local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require 'cmp_nvim_lsp'.update_capabilities(client_capabilities)

config.pyright.setup({
  capabilities = capabilities
})
