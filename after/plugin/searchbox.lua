require('searchbox').setup({
    defaults = {
        reverse = false,
        exact = false,
        prompt = ' ',
        modifier = 'ignore-case',
        confirm = 'off',
        clear_matches = true,
        show_matches = true,
    },
    popup = {
        relative = 'win',
        position = {
            row = '5%',
            col = '95%',
        },
        size = 30,
        border = {
            style = 'rounded',
            text = {
                top = ' Search ',
                top_align = 'left',
            },
        },
        win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
        },
    },
    hooks = {
        before_mount = function(input)
            -- code
        end,
        after_mount = function(input)
            vim.keymap.set('i', '<Down>', '<Plug>(searchbox-next-match)', opts)
            vim.keymap.set('i', '<Up>', '<Plug>(searchbox-prev-match)', opts)
            -- vim.keymap.set('i', '<Right>', '<Plug>(searchbox-next-match)', opts)
            -- vim.keymap.set('i', '<Left>', '<Plug>(searchbox-prev-match)', opts)
            vim.keymap.set('i', '<C-d>', '<Plug>(searchbox-last-search)', opts)
            -- code
        end,
        on_done = function(value, search_type)
            vim.keymap.set('i', '<Up>', '<Up>', opts)
            vim.keymap.set('i', '<Down>', '<Down>', opts)
            -- vim.keymap.set('i', '<Left>', '<Left>', opts)
            -- vim.keymap.set('i', '<Right>', '<Right>', opts)
            -- code
        end
    }
})
