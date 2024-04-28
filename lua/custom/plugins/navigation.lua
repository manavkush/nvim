return {
  {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true,
    keys = {
      {
        '<leader>hx',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Mark file with harpoon',
      },
      {
        '<leader>hn',
        function()
          require('harpoon'):list():next()
        end,
        desc = 'Go to next harpoon mark',
      },
      {
        '<leader>hp',
        function()
          require('harpoon'):list():prev()
        end,
        desc = 'Go to previous harpoon mark',
      },
      {
        '<leader>ha',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Show harpoon marks',
      },
    },
  },
}
