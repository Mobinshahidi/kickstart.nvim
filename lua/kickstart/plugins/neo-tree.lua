return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, for icons
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree', -- lazy-load when `:Neotree` is called
  keys = {
    {
      '<leader>e',
      function()
        vim.cmd 'Neotree toggle left'
      end,
      desc = 'Toggle NeoTree',
    },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    }
  end,
}
