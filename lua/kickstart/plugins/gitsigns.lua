-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following Lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '' },
      topdelete = { text = '' },
      changedelete = { text = '▎' },
      untracked = { text = '▎' },
    },
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      map('n', ']g', gs.next_hunk, 'Next Git hunk')
      map('n', '[g', gs.prev_hunk, 'Previous Git hunk')
      map('n', '<leader>gl', gs.blame_line, 'View Git blame')
      map('n', '<leader>gL', function()
        gs.blame_line { full = true }
      end, 'View full Git blame')
      map('n', '<leader>gp', gs.preview_hunk, 'Preview Git hunk')
      map('n', '<leader>gh', gs.reset_hunk, 'Reset Git hunk')
      map('n', '<leader>gr', gs.reset_buffer, 'Reset Git buffer')
      map('n', '<leader>gs', gs.stage_hunk, 'Stage Git hunk')
      map('n', '<leader>gS', gs.stage_buffer, 'Stage Git buffer')
      map('n', '<leader>gu', gs.undo_stage_hunk, 'Unstage Git hunk')
      map('n', '<leader>gd', gs.diffthis, 'View Git diff')
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
