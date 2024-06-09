vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Normal mode" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear highlights" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<leader>txx", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "New tab in buffer" })

-- splits
keymap.set("n", "<leader>sh", "<cmd>vs<cr>", { desc = "Split left" })
keymap.set("n", "<leader>sj", "<cmd>sv|wincmd j<cr>", { desc = "Split down" })
keymap.set("n", "<leader>sk", "<cmd>sv<cr>", { desc = "Split up" })
keymap.set("n", "<leader>sl", "<cmd>vs|wincmd l<cr>", { desc = "Split right" })

-- vertical
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Navigate up" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Navigate down" })
