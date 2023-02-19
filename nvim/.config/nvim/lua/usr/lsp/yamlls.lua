local handlers = require("usr.lsp.handlers")

require("lspconfig").yamlls.setup {
  on_attach = handlers.on_attach,
  capabilities = handlers.capabilities,
}
