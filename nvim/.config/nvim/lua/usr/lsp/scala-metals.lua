local metals = require("metals")
local metals_config = metals.bare_config()

metals_config.settings = {
  showImplicitArguments = true,
  showImplicitConversionsAndClasses = true,
  showInferredType = true,
  excludedPackages = {}
}

local handlers = require("usr.lsp.handlers")

metals_config.on_attach = function(client, bufnr)
  handlers.on_attach(client, bufnr)
end

metals_config.capabilities = handlers.capabilities


local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt" },
  callback = function()
    metals.initialize_or_attach(metals_config)
  end,
  group = nvim_metals_group
})
