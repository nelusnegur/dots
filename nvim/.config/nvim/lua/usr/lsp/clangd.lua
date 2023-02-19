local handlers = require("usr.lsp.handlers")

require("lspconfig").clangd.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
