return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        local wk = require 'which-key'
        wk.setup {
            show_help = false,
            plugins = { spelling = true },
            key_labels = { ["<leader>"] = "SPC" },
            triggers = 'auto',
        }
        wk.register ({
            w = { "<cmd>udpate!<CR>", "Save" },
            q = { "<cmd>lua require('util').smart_quire()<CR>", 'Quit' },
            f = { name = '+File' },
            g = { name = '+Git' },
            c = {
                name = '+Code',
                x = {
                    name = 'Swap Next',
                    f = 'Function',
                    p = 'Parameter',
                    c = 'Class',
                },
                X = { 
                    f = 'Function',
                    p = 'Parameter',
                    c = 'Class',
                },
            },
        }, 
        { 
            prefix = '<leader>'
        })
    end,
}
