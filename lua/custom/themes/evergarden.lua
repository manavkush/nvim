return {
  'comfysage/evergarden',
  priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = {
    transparent_background = true,
    contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
    overrides = {
      Normal = {
        { '#fddce3', 8 }, -- GUI color and cterm color for 'fg'
        { '#1d2021' }, -- GUI color for 'bg'

        -- Additional highlight options can be included here

        bold = true,
        italic = false,
      },
      Keyword = {
        fg = '#ce96de', -- GUI color for 'fg'
        bg = { '#ae45be', 5 }, -- GUI color and cterm color for 'bg'
      },
    }, -- add custom overrides
  },
}
