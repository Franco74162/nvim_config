return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            themable = true,
            mode = "tabs",
            separator_style = "thin",
            numbers = "none",
            show_buffer_close_icons = false,
            show_duplicate_prefix = false,
            always_show_bufferline = false,
            auto_toggle_bufferline = true,
        },
        highlights = {
            fill = {
                bg = "#1e1e2e",
            }
        }
    },
}
