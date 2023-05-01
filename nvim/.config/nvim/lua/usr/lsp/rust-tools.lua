local handlers = require("usr.lsp.handlers")

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
    -- see https://github.com/rust-lang/rust-analyzer/blob/master/docs/user/generated_config.adoc
    settings = {
      ["rust-analyzer"] = {
        lens = {
          enable = true,
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = "always",
            useParameterNames = false
          },
          expressionAdjustmentHints = {
            enable = "never" -- available options: always, never, reborrow
          },
          bindingModeHints = {
            enable = false,
          },
          chainingHints = {
            enable = false,
          },
          closingBraceHints = {
            enable = false,
            minLines = 25
          },
          closureReturnTypeHints = {
            enable = "never",
            maxLength = 25
          },
          parameterHints = {
            enable = false
          },
          renderColons = true,
          typeHints = {
            enable = false,
            hideClosureInitialization = false,
            hideNamedConstructor = false
          },
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  }
})
