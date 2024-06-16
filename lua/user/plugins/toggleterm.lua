return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
    },
    config = function()
        require("toggleterm").setup({
            highlights = {
                -- highlights which map to a highlight group name and a table of it's values
                Normal = {
                    guibg = "#1e1e2e",
                },
                NormalFloat = {
                    -- link = "#00ff00",
                },
                FloatBorder = {
                    guifg = "#b4befe",
                    guibg = "#1e1e2e",
                },
            },
            shade_terminals = false,
            float_opts = {
                -- The border key is *almost* the same as 'nvim_open_win'
                -- see :h nvim_open_win for details on borders however
                -- the 'curved' border is a custom border type
                -- not natively supported but implemented in this plugin.
                border = 'curved',
                width = 999,
                height = 53,
                row = 10,
                col = 10,
                winblend = 3,
                zindex = 1,
                title_pos = 'left',
            },
        });
        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

        local keymap = vim.keymap
        keymap.set("n", "<leader><leader>l", ":ToggleTerm dir=./ direction=vertical name=Term size=90<cr>",
            { desc = "Open terminal to the right" })
        keymap.set("n", "<leader><leader>j", ":ToggleTerm dir=./ direction=horizontal name=Term size=20<cr>",
            { desc = "Open terminal to the bottom" })
        keymap.set("n", "<leader><leader>f", ":ToggleTerm dir=./ direction=float size=20<cr>",
            { desc = "Open floating terminal" })
    end,
}
