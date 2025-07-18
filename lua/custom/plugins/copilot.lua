return {
  {
    'github/copilot.vim',
  },
  -- {
  --   'ravitemer/mcphub.nvim',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --   },
  --   build = 'npm install -g mcp-hub@latest', -- Installs `mcp-hub` node binary globally
  --   config = function()
  --     require('mcphub').setup()
  --   end,
  -- },
  {
    'olimorris/codecompanion.nvim',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('codecompanion').setup {
        extensions = {
          -- mcphub = {
          --   callback = 'mcphub.extensions.codecompanion',
          --   opts = {
          --     show_result_in_chat = true, -- Show mcp tool results in chat
          --     make_vars = true, -- Convert resources to #variables
          --     make_slash_commands = true, -- Add prompts as /slash commands
          --   },
          -- },
        },
      }
    end,
  },
  -- {
  --   'yetone/avante.nvim',
  --   event = 'VeryLazy',
  --   lazy = false,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     provider = 'copilot',
  --     auto_suggestions_provider = 'copilot',
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = 'make',
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     'stevearc/dressing.nvim',
  --     'nvim-lua/plenary.nvim',
  --     'MunifTanjim/nui.nvim',
  --     --- The below dependencies are optional,
  --     'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
  --     'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
  --     'zbirenbaum/copilot.lua', -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       'HakonHarnes/img-clip.nvim',
  --       event = 'VeryLazy',
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --     -- {
  --     --   -- Make sure to set this up properly if you have lazy=true
  --     --   'MeanderingProgrammer/render-markdown.nvim',
  --     --   opts = {
  --     --     file_types = { 'markdown', 'Avante' },
  --     --     render_modes = { 'n', 'c', 't' },
  --     --     heading = {
  --     --       enabled = false,
  --     --     },
  --     --   },
  --     --   ft = { 'markdown', 'Avante' },
  --     -- },
  --     config = function()
  --       require('avante').setup {
  --         system_prompt = function()
  --           local hub = require('mcphub').get_hub_instance()
  --           return hub and hub:get_active_servers_prompt() or ''
  --         end,
  --         -- Using function prevents requiring mcphub before it's loaded
  --         custom_tools = function()
  --           return {
  --             require('mcphub.extensions.avante').mcp_tool(),
  --           }
  --         end,
  --       }
  --     end,
  --   },
  -- },
}
