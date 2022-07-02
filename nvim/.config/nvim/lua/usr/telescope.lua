local telescope = require("telescope")
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
      i = {
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-/>"] = actions.which_key,
        ["<C-t>"] = trouble.open_with_trouble,
      },
      n = {
        ["?"] = actions.which_key,
        ["<C-t>"] = trouble.open_with_trouble,
      },
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }

    -- ["ui-select"] = {
    --   require("telescope.themes").get_dropdown {
    --     -- even more opts
    --   }
    -- }
  },
}

telescope.load_extension("ui-select")
