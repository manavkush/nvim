return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>xx',
      '<cmd>Trouble diagnostics toggle<CR>',
      'Worksapce diagnostics',
    },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
  },
}
