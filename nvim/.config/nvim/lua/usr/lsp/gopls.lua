local handlers = require("usr.lsp.handlers")

require("lspconfig").gopls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities
}
