local noremap = { noremap = true }
local silent = { silent = true }
local opts = vim.tbl_deep_extend("force", noremap, silent)

local keymap = vim.keymap.set

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

-- Centered navigation through search results
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)

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

-- Copy / paste from system clipboard
keymap("n", "<leader>y", '"+y', noremap)
keymap("v", "<leader>y", '"+y', noremap)
keymap("n", "<leader>Y", '"+Y', noremap)

keymap("n", "<leader>0", '"+p', noremap)
keymap("v", "<leader>0", '"+p', noremap)
keymap("x", "<leader>0", '"+p', noremap)

-- Paste without affecting the unnamed register
keymap("n", "<leader>p", '"_dP', noremap)
keymap("v", "<leader>p", '"_dP', noremap)
keymap("x", "<leader>p", '"_dP', noremap)

-- Delete without affecting the unnamed register
keymap("n", "<leader>d", '"_d', noremap)
keymap("v", "<leader>d", '"_d', noremap)
keymap("x", "<leader>d", '"_d', noremap)

-- Navigate the quickfix list
keymap("n", "<C-j>", ":cn<CR>zz", opts)
keymap("n", "<C-k>", ":cp<CR>zz", opts)

keymap("n", "<leader>co", ":colder<CR>", opts)
keymap("n", "<leader>cn", ":cnewer<CR>", opts)

keymap("n", "<leader>fi", ":Telescope quickfix<CR>", opts)
keymap("n", "<leader>fu", ":Telescope quickfixhistory<CR>", opts)

-- Navigate the location list
keymap("n", "<leader>mj", ":ln<CR>zz", opts)
keymap("n", "<leader>mk", ":lp<CR>zz", opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bn<CR>zz", opts)
keymap("n", "<leader>bp", ":bp<CR>zz", opts)

-- Resize window with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Telescope
keymap("n", "<leader>fj", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fh", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fl", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fk", ":Telescope grep_string<CR>", opts)

keymap("n", "<leader>f;", ":Telescope lsp_dynamic_workspace_symbols<CR>", opts)
keymap("n", "<leader>fd", ":Telescope lsp_document_symbols<CR>", opts)

keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fr", ":Telescope registers<CR>", opts)
keymap("n", "<leader>fp", ":Telescope pickers<CR>", opts)
keymap("n", "<leader>ft", ":Telescope help_tags<CR>", opts)

-- Metals
keymap("n", "<leader>mc", function()
  require("telescope").extensions.metals.commands()
end, opts)

-- File explorer via Telescope
keymap("n", "<leader>e", ":Telescope file_browser<CR>", noremap)

-- Navigate tabs
keymap("n", "<leader>ta", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>to", ":tabonly<CR>", opts)
keymap("n", "<leader>tn", ":tabn<CR>", opts)
keymap("n", "<leader>tp", ":tabp<CR>", opts)
keymap("n", "<leader>tmp", ":-tabmove<CR>", opts)
keymap("n", "<leader>tmn", ":+tabmove<CR>", opts)

-- Git
keymap("n", "<leader>gh", ":G blame<CR>", noremap)
keymap("n", "<leader>gl", ":GBrowse<CR>", noremap)
keymap("v", "<leader>gl", ":.GBrowse<CR>", noremap)

keymap("n", "<leader>gc", ":Telescope git_commits<CR>", noremap)
keymap("n", "<leader>gb", ":Telescope git_branches<CR>", noremap)
keymap("n", "<leader>gs", ":Telescope git_stash<CR>", noremap)
keymap("n", "<leader>gj", ":Telescope git_files<CR>", noremap)

-- Harpoon
keymap("n", "<leader>he", function() require("harpoon.ui").toggle_quick_menu() end, opts)
keymap("n", "<leader>ha", function() require("harpoon.mark").add_file() end, opts)
keymap("n", "<leader>hr", function() require("harpoon.mark").rm_file() end, opts)
keymap("n", "<leader>hn", function() require("harpoon.ui").nav_next() end, opts)
keymap("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end, opts)

keymap("n", "<leader>j", function() require("harpoon.ui").nav_file(1) end, opts)
keymap("n", "<leader>k", function() require("harpoon.ui").nav_file(2) end, opts)
keymap("n", "<leader>l", function() require("harpoon.ui").nav_file(3) end, opts)
keymap("n", "<leader>;", function() require("harpoon.ui").nav_file(4) end, opts)

-- Undotree
keymap("n", "<leader>ut", ':UndotreeShow<CR>', opts)

-- DAP
keymap("n", "<leader>bu", function() require("dap-view").toggle() end, opts)
keymap("n", "<leader>be", function() require("dap-view").add_expr(vim.fn.expand('<cword>')) end, opts)
keymap("n", "<leader>bj", function() require("dap").toggle_breakpoint() end, opts)
keymap("n", "<leader>bk", function() require("dap").continue() end, opts)
keymap("n", "<leader>bi", function() require("dap").step_into() end, opts)
keymap("n", "<leader>bo", function() require("dap").step_over() end, opts)
keymap("n", "<leader>bl", function() require("dap").run_last() end, opts)
keymap("n", "<leader>bt", function() require("dap").repl.toggle() end, opts)
