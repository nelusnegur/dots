local noremap = { noremap = true }
local silent = { silent = true }
local opts = vim.tbl_deep_extend("force", noremap, silent)

local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal = "n",
--   insert = "i",
--   replace = "r"
--   visual = "v",
--   visual block = "x",
--   select = "s",
--   term = "t",
--   command = "c",

-- Centered page up / down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Substitute the word under the cursor
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", noremap)

-- Quick escape
keymap("i", "<C-c>", "<Esc>", noremap)

-- Quick save
keymap("n", "<leader>w", ":w<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", noremap)
keymap("v", "K", ":m '<-2<CR>gv=gv", noremap)
keymap("x", "J", ":m '>+1<CR>gv=gv", noremap)
keymap("x", "K", ":m '<-2<CR>gv=gv", noremap)

-- Paste from system clipboard
keymap("n", "<leader>pc", '"+p', noremap)
keymap("v", "<leader>pc", '"+p', noremap)
keymap("x", "<leader>pc", '"+p', noremap)

-- Paste without affecting the unnamed register
keymap("v", "<leader>pb", '"_dP', noremap)
keymap("x", "<leader>pb", '"_dP', noremap)

-- Delete without affecting the unnamed register
keymap("n", "<leader>d", '"_d', noremap)
keymap("v", "<leader>d", '"_d', noremap)
keymap("x", "<leader>d", '"_d', noremap)

-- Copy to the system clipboard
keymap("n", "<leader>y", '"+y', noremap)
keymap("v", "<leader>y", '"+y', noremap)
keymap("n", "<leader>Y", '"+Y', noremap)

-- Navigate the quickfix list
keymap("n", "<C-k>", ":cnext<CR>zz", opts)
keymap("n", "<C-j>", ":cprev<CR>zz", opts)

-- Navigate the location list
keymap("n", "<leader>k", ":lnext<CR>zz", opts)
keymap("n", "<leader>j", ":lprev<CR>zz", opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bnext<CR>zz", opts)
keymap("n", "<leader>bp", ":bprevious<CR>zz", opts)

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fj", ":lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fs", ":Telescope lsp_workspace_symbols<CR>", opts)
keymap("n", "<leader>fd", ":Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<leader>fr", ":Telescope registers<CR>", opts)
keymap("n", "<leader>fp", ":Telescope pickers<CR>", opts)
keymap("n", "<leader>ft", ":Telescope help_tags<CR>", opts)

-- File explorer via Telescope
keymap("n", "<leader>e", ":Telescope file_browser path=%:p:h<CR>", noremap)
keymap("n", "<leader>we", ":Telescope file_browser<CR>", noremap)

-- Trouble
keymap("n", "<leader>xx", ":Trouble<CR>", opts)
keymap("n", "<leader>xw", ":Trouble workspace_diagnostics<CR>", opts)
keymap("n", "<leader>xd", ":Trouble document_diagnostics<CR>", opts)
keymap("n", "<leader>xl", ":Trouble loclist<CR>", opts)
keymap("n", "<leader>xq", ":Trouble quickfix<CR>", opts)
keymap("n", "gR", ":Trouble lsp_references<CR>", opts)

-- Navigate tabs
keymap("n", "<leader>ta", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)
keymap("n", "<leader>tn", ":tabn<CR>", opts)
keymap("n", "<leader>tp", ":tabp<CR>", opts)
keymap("n", "<leader>tmp", ":-tabmove<CR>", opts)
keymap("n", "<leader>tmn", ":+tabmove<CR>", opts)

-- Git
keymap("n", "<leader>gb", ":G blame<CR>", noremap)
keymap("n", "<leader>gl", ":GBrowse<CR>", noremap)
keymap("v", "<leader>gl", ":.GBrowse<CR>", noremap)

keymap("n", "<leader>gc", ":Telescope git_commits<CR>", noremap)
keymap("n", "<leader>gr", ":Telescope git_branches<CR>", noremap)
keymap("n", "<leader>gs", ":Telescope git_stash<CR>", noremap)

-- Harpoon
keymap("n", "<leader>he", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
keymap("n", "<leader>ha", ':lua require("harpoon.mark").add_file()<CR>', opts)
keymap("n", "<leader>hr", ':lua require("harpoon.mark").rm_file()<CR>', opts)
keymap("n", "<leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', opts)
keymap("n", "<leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', opts)

keymap("n", "<leader>hh", ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap("n", "<leader>hj", ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap("n", "<leader>hk", ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap("n", "<leader>hl", ':lua require("harpoon.ui").nav_file(4)<CR>', opts)

-- Undotree
keymap("n", "<leader>ut", ':UndotreeShow<CR>', opts)
