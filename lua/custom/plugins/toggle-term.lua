return {
  'akinsho/toggleterm.nvim',
  lazy = false,
  config = function()
    require('toggleterm').setup {
      direction = 'float',
      open_mapping = [[<A-\>]],
      shade_terminals = false,
    }
  end,
}
