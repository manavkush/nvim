return {
  -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  lazy = true,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'onedark'
  end,
}
