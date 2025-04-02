-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- remap 0 to jump to begining of line, first non white space
vim.keymap.set({ 'n', 'v' }, '0', '_')
-- remap - to jump to end of line
vim.keymap.set({ 'n', 'v' }, '-', '$')

-- map enter to insert a new line below and shift enter above
vim.keymap.set('n', '<CR>', 'o<Esc>')
vim.keymap.set('n', '<S-CR>', 'm`O<Esc>``')

-- remap # to remain on current word and search forwards
vim.keymap.set('n', '#', ':keepjumps normal! mi*`i<CR>')

-- Keep selection after indention or dentention
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
--vim.api.nvim_create_autocmd('TextYankPost', {
--  desc = 'Highlight when yanking (copying) text',
--  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
--  callback = function()
--    vim.highlight.on_yank()
--  end,
--})

-- map switch case
require 'switch_case'
vim.api.nvim_set_keymap('n', '<Leader>.', '<cmd>lua require("switch_case").switch_case()<CR>', { noremap = true, silent = true, desc = 'Switch Case' })

-- open terminal
vim.keymap.set('n', '<leader>T', ':terminal<CR>', { desc = '[T]erminal' })

-- vim: ts=2 sts=2 sw=2 et
