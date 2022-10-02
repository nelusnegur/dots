vim.opt.fileencoding = "utf-8"
vim.opt.conceallevel = 0
vim.opt.termguicolors = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.showmode = true
vim.opt.cmdheight = 1
vim.opt.showtabline = 2
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.undodir")

vim.opt.timeoutlen = 1000
vim.opt.updatetime = 300

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.guifont = "Iosevka:h18"

vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
