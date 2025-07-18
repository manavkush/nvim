return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',

    -- Your other test adapters here
    { 'fredrikaverpil/neotest-golang', version = '*' }, -- Installation
  },
  keys = {
    { '<leader>tt', '<cmd>Neotest run<cr>', 'Neotest run' },
    { '<leader>to', '<cmd>Neotest output<cr>', 'Neotest console' },
  },
  lazy = true,
  config = function()
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)

    require('neotest').setup {
      -- your neotest config here
      adapters = {
        require 'neotest-golang' {
          enable_testify = true,
        },
      },
    }
  end,
}
