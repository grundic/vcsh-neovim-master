local M = {}

M.config = function()
  require'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran'
  }

  -- hop around by highlighting words.
  vim.api.nvim_set_keymap('n', 'gw', ":HopWord<cr>", {silent = true})
  -- type a bigram (two keys) and hop to any occurrence of that bigram in the document.
  vim.api.nvim_set_keymap('n', 'gW', ":HopChar2<cr>", {silent = true})
  -- hop around by matching against a pattern (as with /).
  vim.api.nvim_set_keymap('n', 'gp', ":HopPattern<cr>", {silent = true})
end

return M.config()
