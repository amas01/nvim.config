-- Neo-tree is a Neovim plugin to browse the filesystem
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  -- automatically update the parsers with every new release of treesitter
  build = ':TSUpdate',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    {
      's1n7ax/nvim-window-picker',
      version = '2.*',
      config = function()
        require('window-picker').setup {
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the filetype is one of following, the window will be ignored
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', 'quickfix' },
            },
          },
        }
      end,
    },
  },
  cmd = 'Neotree',
  keys = {
    { ' o', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    ensure_installed = {
      -- auto-install the Treesitter parser for python and related languages
      'python',
      'toml',
      'rst',
      'ninja',
      'markdown',
      'markdown_inline',
    },
    filesystem = {
      window = {
        mappings = {
          [' o'] = 'close_window',
          ['<2-LeftMouse>'] = 'open',
          ['l'] = 'open',
        },
      },
    },
  },
}
