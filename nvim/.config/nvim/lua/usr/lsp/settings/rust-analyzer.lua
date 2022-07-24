return {
  -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
  settings = {
    ["rust-analyzer"] = {
      lens = {
        enable = true,
      },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}
