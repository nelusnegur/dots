return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000, -- load this before all the other start plugins
    config = function()
      vim.cmd("colorscheme nordfox")
    end,
  }
}
