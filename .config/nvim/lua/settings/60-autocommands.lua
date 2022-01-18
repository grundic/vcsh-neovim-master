--[[ Common autocommands.
--]]
local cmd = vim.cmd

-- Restore cursor position after reopening file.
cmd([[
  autocmd BufRead * autocmd FileType <buffer> ++once
      \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
]])

