return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local colors = {
            bg = "#1e1e2e",
            blue = "#89b4fa",
            green = "#a6e3a1",
            red = "#f38ba8",
            purple = "#cba6f7",
            orange = "#fab387",
            fg = "#a6adc8",
            inactive = "#6c7086",
        }
        local theme = {
            normal = {
                a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.blue },
                c = { bg = colors.bg, fg = colors.fg },
            },
            insert = {
                a = { bg = colors.green, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.green },
                c = { bg = colors.bg, fg = colors.fg },
            },
            visual = {
                a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.purple },
                c = { bg = colors.bg, fg = colors.fg },
            },
            command = {
                a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.orange },
                c = { bg = colors.bg, fg = colors.fg },
            },
            replace = {
                a = { bg = colors.red, fg = colors.bg, gui = "bold" },
                b = { bg = colors.bg, fg = colors.red },
                c = { bg = colors.bg, fg = colors.fg },
            },
            inactive = {
                a = { bg = colors.bg, fg = colors.inactive, gui = "bold" },
                b = { bg = colors.bg, fg = colors.inactive },
                c = { bg = colors.bg, fg = colors.inactive },
            },
        }
        require("lualine").setup({
            options = {
                theme = theme
            }
        })
    end,
}
