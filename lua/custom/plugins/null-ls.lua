return {
  {
    'nvimtools/none-ls.nvim',
    config = function()
      local null_ls = require 'null-ls'

      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.prettierd.with {
            filetypes = { 'html', 'css', 'yaml', 'json', 'typescript', 'react-typescript', 'javascript', 'react-javascript' },
          },
          -- null_ls.builtins.diagnostics.eslint_d.with({
          --   diagnostics_format = '[eslint] #{m}\n(#{c})'
          -- }),
          -- null_ls.builtins.diagnostics.fish
        },
      }
    end,
  },
  -- {
  --   'pmizio/typescript-tools.nvim',
  --   dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  --   opt = {
  --     filetypes = {
  --       'javascript',
  --       'javascriptreact',
  --       'typescript',
  --       'typescriptreact',
  --       'vue',
  --     },
  --     settings = {
  --       capabilities = {},
  --       single_file_support = false,
  --       tsserver_plugins = {
  --         '@vue/typescript-plugin',
  --       },
  --     },
  --   },
  -- },
}
