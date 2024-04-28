return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettierd.with {
          filetypes = { 'html', 'css', 'yaml', 'markdown', 'json', 'typescript', 'react-typescript', 'javascript', 'react-javascript' },
        },
        -- null_ls.builtins.diagnostics.eslint_d.with({
        --   diagnostics_format = '[eslint] #{m}\n(#{c})'
        -- }),
        -- null_ls.builtins.diagnostics.fish
      },
    }
  end,
}
