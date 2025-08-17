return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    init = function(plugin)
      -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
      -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
      -- no longer trigger the **nvim-treesitter** module to be loaded in time.
      -- Luckily, the only things that those plugins need are the custom queries, which we make available
      -- during startup.
      require("lazy.core.loader").add_to_rtp(plugin)
      require("nvim-treesitter.query_predicates")
    end,
    opts = {
      ensure_installed = "all",
      sync_install = false,
      auto_install = true,
      ignore_install = { "norg" },

      highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      local hocon_group = vim.api.nvim_create_augroup("hocon", { clear = true })
      vim.api.nvim_create_autocmd(
        { "BufNewFile", "BufRead" },
        { group = hocon_group, pattern = "*.conf", command = "set ft=hocon" }
      )
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,           -- Enable this plugin (Can be enabled/disabled later via commands)
      max_lines = 0,           -- How many lines the window should span. Values <= 0 mean no limit.
      min_window_height = 0,   -- Minimum editor window height to enable context. Values <= 0 mean no limit.
      line_numbers = true,
      multiline_threshold = 2, -- Maximum number of lines to show for a single context
      trim_scope = 'outer',    -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
      mode = 'cursor',         -- Line used to calculate context. Choices: 'cursor', 'topline'
      -- Separator between context and content. Should be a single character string, like '-'.
      -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
      separator = nil,
      zindex = 20,     -- The Z-index of the context window
      on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
    }
  }
}
