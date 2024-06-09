return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
        "ThePrimeagen/harpoon",
    },
    config = function()
        require("telescope").load_extension('harpoon')
        local keymap = vim.keymap
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fzf files" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fzf old files" })
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", { desc = "Grep cursor" })
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Todo list" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fzf buffers" })
    end,
}
