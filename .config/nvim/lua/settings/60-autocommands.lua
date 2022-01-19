--[[ Common autocommands.
--]]
local cmd = vim.cmd

cmd([[
  " Restore cursor position after reopening file.
  autocmd BufRead * autocmd FileType <buffer> ++once
      \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif

  " Highlight trailing spaces.
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()

  " Trim trailing spaces automatically.
  autocmd BufWritePre * lua require('utils').strip_trailing_whitespace()

  " Turn of relative numbers and hightlighting for inactive window and insert mode.
  :augroup numbertoggle
  :  autocmd!
  :  autocmd BufEnter,FocusGained,InsertLeave * setlocal relativenumber cursorline
  :  autocmd BufLeave,FocusLost,InsertEnter   * setlocal norelativenumber nocursorline
  :augroup END

  " Highlight on yank.
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({timeout = 200})
  augroup end
]])

