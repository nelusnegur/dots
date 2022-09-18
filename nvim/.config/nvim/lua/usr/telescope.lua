local telescope = require("telescope")
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")
local trouble = require("trouble.providers.telescope")

telescope.setup {
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    multi_icon = "<>",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-/>"] = actions.which_key,
        ["<C-t>"] = trouble.open_with_trouble,
        ["<M-p>"] = action_layout.toggle_preview,
        ["<M-m>"] = action_layout.toggle_mirror,
      },
      n = {
        ["?"] = actions.which_key,
        ["<C-t>"] = trouble.open_with_trouble,
      },
    },
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      mappings = {
        i = {
          ["<C-e>"] = actions.delete_buffer
        },
        n = {
          ["d"] = actions.delete_buffer
        }
      }
    }
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    },
    file_browser = {
      theme = "dropdown",
      previewer = false,
      hidden = true,
      grouped = true,
      hijack_netrw = true,
      layout_config = { height = 0.4 },
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
