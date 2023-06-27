return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons'} ,
    lazy = false,
    keys = {
      { '<leader>n', ':NvimTreeOpen<CR>', desc = 'Open nvim-tree' }
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require('nvim-tree').setup({
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
        view = {
          adaptive_size = true,
          float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = {
              relative = 'editor',
              border = 'rounded',
              width = 30,
              height = 50,
              row = 1,
              col = 1,
            },
          },
        },
      })
    end
  },
}
