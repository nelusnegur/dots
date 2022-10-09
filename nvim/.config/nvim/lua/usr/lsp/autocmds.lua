-- Autoformat on write
vim.api.nvim_create_autocmd(
  "BufWritePre",
  {
    pattern = { "*.rs", "*.lua", "*.scala" },
    callback = function()
      vim.lsp.buf.format({ async = false, timeout_ms = 200 })
    end
  }
)
