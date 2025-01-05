return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {},
    config = function()
      local handlers = require("config.lsp.handlers")

      require("lspconfig").lua_ls.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { 'vim' },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
              enable = false,
            },
          },
        },
      }

      require("lspconfig").gopls.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities
      }

      require("lspconfig").zls.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities
      }

      require("lspconfig").clangd.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
      }

      require("lspconfig").html.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
      }

      require("lspconfig").cssls.setup {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
      }
    end
  }
}
