-- create docstring template
return {
  'danymat/neogen',
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
  snippet_engine = 'luasnip',
  keys = {
    {
      '<leader>a',
      function()
        require('neogen').generate()
      end,
      desc = '[A]dd Docstring',
    },
  },
}
