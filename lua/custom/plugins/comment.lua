return {
  'numToStr/Comment.nvim',
  dependencies = {
    { 'JoosepAlviste/nvim-ts-context-commentstring', lazy = true, opts = { enable_autocmd = false } },
  },
  lazy = false,
  opts = {
    toggler = { line = '<leader>/' },
    opleader = { line = '<leader>/' },
  },
}
