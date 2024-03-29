require('which-key').setup({
  -- one can check for conflicting key-bidings with `checkhealth which_key`.

  -- https://www.reddit.com/r/vim/comments/vwhdpa/way_to_list_internalbuiltin_vim_keybindings/
  vim.api.nvim_set_keymap('n', '<M-k>', '<cmd>WhichKey<cr>', { noremap = true, silent = true, desc = "Display WhichKey for normal mode." }),
  vim.api.nvim_set_keymap('v', '<M-k>', '<cmd>WhichKey \'\' v<cr>', { noremap = true, silent = true, desc = "Display WhichKey for visual mode." }),
  vim.api.nvim_set_keymap('i', '<M-k>', '<cmd>WhichKey \'\' i<cr>', { noremap = true, silent = true, desc = "Display WhichKey for insert mode." }),
  vim.api.nvim_set_keymap('c', '<M-k>', '<cmd>WhichKey \'\' c<cr>', { noremap = true, silent = true, desc = "Display WhichKey for command mode." }),
})
