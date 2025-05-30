local function new_split_window()
  vim.cmd('vsplit')
  local win = vim.api.nvim_get_current_win()
  local buf = vim.api.nvim_create_buf(true, true)
  vim.api.nvim_win_set_buf(win, buf)
end

local function set_lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gk", function()
    vim.lsp.buf.definition()
    new_split_window()
  end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = "rounded" }) end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', '<leader>fo', function() vim.lsp.buf.format { async = true } end, opts)
  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help({ border = "rounded" }) end, opts)
  vim.keymap.set("n", "gl", function() vim.diagnostic.open_float({ border = "rounded" }) end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true, border = "rounded" }) end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true, border = "rounded" }) end, opts)
  vim.keymap.set("n", "<leader>ci", function() vim.diagnostic.setqflist() end, opts)
  vim.keymap.set("n", "<leader>ms", function() vim.diagnostic.setloclist() end, opts)
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    set_lsp_keymaps(args.buf)
  end
})
