return {
  { "williamboman/mason.nvim",      opts = {} },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        -- The dedicated rust plugin installs it
        -- "rust_analyzer",
        "zls",
        "clangd",
        "html",
        "cssls",
      },
    }
  },
  {
    "linrongbin16/lsp-progress.nvim",
    opts = {
      format = function(client_messages)
        return #client_messages > 0
            and (" " .. table.concat(client_messages, " "))
            or ""
      end,
    }
  },
}
