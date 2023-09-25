return {
  "akinsho/toggleterm.nvim",
  -- lazy = true,
  config = function ()
    require("toggleterm").setup({
      direction = "horizontal",
      open_mapping = [[<A-\>]],
      shade_terminals = false,
    })
  end,
}
