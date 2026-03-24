return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    -- In nvim-treesitter 1.0+, textobjects are configured as part of the main
    -- nvim-treesitter setup. The configuration has already been done in init.lua
    -- in the nvim-treesitter opts. This plugin just needs to be loaded.
    --
    -- The repeatable_move module was removed in nvim-treesitter-textobjects v2.0
    -- If you need repeatable movement, consider using a separate plugin like
    -- 'nvim-treesitter/nvim-treesitter-textobjects' with 'mini.nvim' or 'leap.nvim'
  end,
}
