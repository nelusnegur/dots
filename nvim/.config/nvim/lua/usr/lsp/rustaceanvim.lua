local handlers = require("usr.lsp.handlers")

vim.g.rustaceanvim = {
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
            useParameterNames = true
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
        imports = {
          prefix = "crate",
          granularity = {
            group = "item"
          },
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
  dap = {
    adapter = {
      type = "executable",
      command = "lldb-vscode",
      name = "Rust lldb",
    },
    autoload_configurations = true,
  },
}
