return {
  'vrischmann/tree-sitter-templ',
  lazy = true,
  ft = { 'templ', 'go', 'html' },
  config = function()
    require('tree-sitter-templ').setup {}
  end,
}
