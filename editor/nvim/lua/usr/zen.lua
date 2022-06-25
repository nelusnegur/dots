require("zen-mode").setup {
   window = {
    backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    -- height and width can be:
    -- * an absolute number of cells when > 1
    -- * a percentage of the width / height of the editor when <= 1
    -- * a function that returns the width or the height
    width = 120, -- width of the Zen window
    height = 1, -- height of the Zen window
    options = {
      signcolumn = "yes",
      number = true,
      relativenumber = true,
      cursorline = true,
      cursorcolumn = false,
      foldcolumn = "0",
      list = true,
    },
  },
  plugins = {
    options = {
      enabled = true,
      ruler = true,
      showcmd = true,
    },
    twilight = { enabled = false },
    gitsigns = { enabled = true },
    tmux = { enabled = true },
  },
}
