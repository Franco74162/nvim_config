return {
    "folke/zen-mode.nvim",
    opts = {},
    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>zt", function()
            require("zen-mode").toggle({
                window = {
                    width = 1,
                }
            })
        end)
    end
}
