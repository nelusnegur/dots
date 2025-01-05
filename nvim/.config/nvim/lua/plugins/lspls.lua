return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {},
    config = function()
      local lsp_config = require("lspconfig")
      local handlers = require("config.lsp.handlers")
      local config = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities
      }

      lsp_config.lua_ls.setup {
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

      lsp_config.gopls.setup(config)
      lsp_config.zls.setup(config)
      lsp_config.clangd.setup(config)
      lsp_config.html.setup(config)
      lsp_config.cssls.setup(config)
    end
  }
}
