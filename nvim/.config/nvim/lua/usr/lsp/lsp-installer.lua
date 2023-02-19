local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("usr.lsp.handlers").on_attach,
    capabilities = require("usr.lsp.handlers").capabilities,
  }

  if server.name == "rust_analyzer" then
    -- Skip lsp config setup since rust-tools sets everything up automatically
    goto skip_setup
  end

  if server.name == "jsonls" then
    local jsonls_opts = require("usr.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server.name == "pyright" then
    local pyright_opts = require("usr.lsp.settings.pyright")
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  server:setup(opts)

  ::skip_setup::
end)
