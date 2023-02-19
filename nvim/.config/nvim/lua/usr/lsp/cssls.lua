local handlers = require("usr.lsp.handlers")

require("lspconfig").cssls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
