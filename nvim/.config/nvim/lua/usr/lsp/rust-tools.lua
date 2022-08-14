local handlers = require("usr.lsp.handlers")
local rust_opts = require("usr.lsp.settings.rust-analyzer")

require("rust-tools").setup({
  tools = {
    hover_actions = {
      border = "rounded",
    },
    autoSetHints = false,
    inlay_hints = {
      auto = false,
      only_current_line = false,
    },
  },
  server = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
    settings = rust_opts.settings
  }
})
