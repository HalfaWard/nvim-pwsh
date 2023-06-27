return {
  {
    'tanvirtin/monokai.nvim',
    event = 'VeryLazy',
    lazy = false,
    priority = 1000,
    config = function()
      require('monokai').setup{
        palette = require('monokai').pro
      }
    end,
  },
  {
    'xiyaowong/transparent.nvim',
    event = 'VeryLazy',
    lazy = false,
    config = function()
      require("transparent").setup({
      groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
      },
      extra_groups = {}, -- table: additional groups that should be cleared
      exclude_groups = {}, -- table: groups you don't want to clear
    })
    end,
    init = function()
      pcall(vim.cmd, 'TransparentEnable')
    end,
  },
--    {
--        'folke/styler.nvim',
--        event = 'VeryLazy',
--        config = function()
--            require('styler').setup{
--                themes = {
--                    markdown = { colorscheme = 'gruvbox' },
--                    help = { colorscheme = 'gruvbox' },
--                },
--            }
--        end,
--    },
--    {
--        'folke/tokyonight.nvim',
--        lazy = false,
--        priority = 500,
--        config = function()
--            local tokyonight = require 'tokyonight'
--            tokyonight.setup {style = 'storm'}
--            tokyonight.load()
--        end,
--    },
}
