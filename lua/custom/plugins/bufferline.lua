-- Adds a tabline showing open buffers
return {
  'akinsho/bufferline.nvim',
  keys = {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    { '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', desc = 'Delete Other Buffers' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { '<Tab>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  },
  opts = {
    options = {
      close_command = function(n)
        require('mini.bufremove').delete(n, false)
      end,
      right_mouse_command = function(n)
        require('mini.bufremove').delete(n, false)
      end,
      diagnostics = 'nvim_lsp',
      always_show_bufferline = true,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
      },
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd('BufAdd', {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
