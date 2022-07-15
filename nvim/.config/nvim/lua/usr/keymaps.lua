local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)

-- Quick escape
keymap("i", "jj", "<Esc>", opts)

-- Quick save
keymap("n", "<leader>w", ":w<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)
keymap("n", "<leader>fw", ":Telescope lsp_workspace_symbols<cr>", opts)
keymap("n", "<leader>fd", ":Telescope lsp_document_symbols<cr>", opts)

-- Treeview
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Trouble
keymap("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", opts)

-- Navigate tabs
keymap("n", "<leader>ta", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)
keymap("n", "<leader>tn", ":tabn<CR>", opts)
keymap("n", "<leader>tp", ":tabp<CR>", opts)
keymap("n", "<leader>tmp", ":-tabmove<CR>", opts)
keymap("n", "<leader>tmn", ":+tabmove<CR>", opts)
