require("lualine").setup({
  ...,
  sections = {
    lualine_c = {
      ...,
      "require('lsp-progress').progress()",
    }
  }
})

-- listen lsp-progress event and refresh lualine
vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
vim.api.nvim_create_autocmd("User LspProgressStatusUpdated", {
    group = "lualine_augroup",
    callback = require("lualine").refresh,
})
