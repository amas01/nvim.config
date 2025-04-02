return {
  'jakewvincent/mkdnflow.nvim',
  config = function()
    require('mkdnflow').setup {
      -- Config goes here; leave blank for defaults
      perspective = {
        priority = 'root',
        root_tell = 'index.md',
      },
      new_file_template = {
        use_template = true,
        placeholders = {
          before = {
            title = 'link_title',
            date = 'os_date',
          },
          after = {},
        },
        template = [[
---
title: {{ title }}
author: AmAs
created: {{ date }}
updated: {{ date }}
tags: []
---
]],
      },
      mappings = {
        MkdnEnter = false,
        MkdnTab = false,
        MkdnSTab = false,
        MkdnNextLink = false,
        MkdnPrevLink = false,
        MkdnNextHeading = { 'n', ']]' },
        MkdnPrevHeading = { 'n', '[[' },
        MkdnGoBack = { 'n', '<BS>' },
        MkdnGoForward = { 'n', '<Del>' },
        MkdnCreateLink = { 'v', ';' },
        MkdnCreateLinkFromClipboard = { { 'n', 'v' }, '<leader>p' },
        MkdnFollowLink = { 'n', ';' },
        MkdnDestroyLink = { 'n', '<M-;>' },
        MkdnTagSpan = { 'v', '<M-CR>' },
        MkdnMoveSource = { 'n', '<F2>' },
        MkdnYankAnchorLink = { 'n', 'yaa' },
        MkdnYankFileAnchorLink = { 'n', 'yfa' },
        MkdnIncreaseHeading = { 'n', '+' },
        MkdnDecreaseHeading = { 'n', '-' },
        MkdnToggleToDo = { { 'n', 'v' }, '<C-Space>' },
        MkdnNewListItem = { 'n', '<leader>ni' },
        MkdnNewListItemBelowInsert = { 'n', 'o' },
        MkdnNewListItemAboveInsert = { 'n', 'O' },
        MkdnExtendList = false,
        MkdnUpdateNumbering = { 'n', '<leader>nn' },
        MkdnTableNextCell = { 'i', '<Tab>' },
        MkdnTablePrevCell = { 'i', '<S-Tab>' },
        MkdnTableNextRow = false,
        MkdnTablePrevRow = { 'i', '<M-CR>' },
        MkdnTableNewRowBelow = { 'n', '<leader>nr' },
        MkdnTableNewRowAbove = { 'n', '<leader>nR' },
        MkdnTableNewColAfter = { 'n', '<leader>nc' },
        MkdnTableNewColBefore = { 'n', '<leader>nC' },
        MkdnFoldSection = { 'n', 'zc' },
        MkdnUnfoldSection = { 'n', 'zo' },
      },
    }
  end,
}
