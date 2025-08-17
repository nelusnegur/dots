return {
  {
    "mfussenegger/nvim-dap",
    init = function()
      vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939", bg = "" })
      vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "" })

      vim.fn.sign_define("DapBreakpoint",
        { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
      vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })
    end,
    config = function(self, opts)
      local dap = require("dap")

      dap.configurations.scala = {
        {
          type = "scala",
          request = "launch",
          name = "Run or test",
          metals = {
            runType = "runOrTestFile",
          }
        },
        {
          type = "scala",
          request = "launch",
          name = "Test target",
          metals = {
            runType = "testTarget"
          }
        }
      }
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    opts = {}
  }
}
