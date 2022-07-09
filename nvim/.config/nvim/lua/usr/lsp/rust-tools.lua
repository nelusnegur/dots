require('rust-tools').setup({})

-- Autoformat on write
vim.api.nvim_create_autocmd(
  "BufWritePre", {
    pattern = { "*.rs" },
    callback = function()
      vim.lsp.buf.formatting_sync(nil, 200)
    end
  }
)
