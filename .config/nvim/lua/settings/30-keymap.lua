local keymap = vim.api.nvim_set_keymap

vim.keymap.set('i', 'kj', '<Esc>', { noremap = true, silent = true, desc = "Avoid the Escape key" })

vim.keymap.set('n', '<leader>l', '(&hls && v:hlsearch ? ":nohls" : ":set hls")."\n"', { noremap = true, silent = true, desc = "Toggle search highlight(c[l]ear)." })

-- toggle settings
vim.keymap.set('n', '<leader>ts',  '<cmd>set invspell spell?<cr>', { noremap = true, desc = "[T]oggle [s]pellscheck" })
vim.keymap.set('n', '<leader>tp',  '<cmd>set invpaste paste?<cr>', { noremap = true, desc = "[T]oggle [p]aste" })
vim.keymap.set('n', '<leader>tn',  '<cmd>set invrnu rnu?<cr>',     { noremap = true, desc = "[T]oggle relative line [n]umbers" })

-- Window resizing using arrow keys.
vim.keymap.set('n', '<left>',     '<c-w>>', { noremap = true, desc = "Resize window to the left" })
vim.keymap.set('n', '<right>',    '<c-w><', { noremap = true, desc = "Resize window to the right" })
vim.keymap.set('n', '<up>',       '<c-w>+', { noremap = true, desc = "Resize window to the top" })
vim.keymap.set('n', '<down>',     '<c-w>-', { noremap = true, desc = "Resize window to the bottom" })

-- Better window navigation.
vim.keymap.set('n', '<leader>z',  '<cmd>lua require("utils").zoom_toggle()<cr>', { noremap = true, desc = "[Z]oom current window" })
vim.keymap.set('n', '<leader>s',  '<c-w>w', { noremap = true, desc = "Move cursor to the next window" })
vim.keymap.set('n', '<C-j>',      '<c-w>j', { noremap = true, desc = "Go to the left window" })
vim.keymap.set('n', '<C-l>',      '<c-w>l', { noremap = true, desc = "Go to the right window" })
vim.keymap.set('n', '<C-k>',      '<c-w>k', { noremap = true, desc = "Go to the upper window" })
vim.keymap.set('n', '<C-h>',      '<c-w>h', { noremap = true, desc = "Go to the lower window" })

-- Tab navigation and movement
vim.keymap.set('n', '<s-Tab>',    'gT', { noremap = true, desc = "Go to the previous tab" })
vim.keymap.set('n', '<Tab>',      'gt', { noremap = true, desc = "Go to the next tab" })
vim.keymap.set('n', '<leader>t[', '<cmd>tabmove -1<cr>', { noremap = true, desc = "Move current tab to the left" })
vim.keymap.set('n', '<leader>t]', '<cmd>tabmove +1<cr>', { noremap = true, desc = "Move current tab to the right" })
vim.keymap.set('n', '<leader>1',  '1gt', { noremap = true, desc = "Switch to the 1st tab" })
vim.keymap.set('n', '<leader>2',  '2gt', { noremap = true, desc = "Switch to the 2nd tab" })
vim.keymap.set('n', '<leader>3',  '3gt', { noremap = true, desc = "Switch to the 3rd tab" })
vim.keymap.set('n', '<leader>4',  '4gt', { noremap = true, desc = "Switch to the 4th tab" })
vim.keymap.set('n', '<leader>5',  '5gt', { noremap = true, desc = "Switch to the 5th tab" })
vim.keymap.set('n', '<leader>6',  '6gt', { noremap = true, desc = "Switch to the 6th tab" })
vim.keymap.set('n', '<leader>7',  '7gt', { noremap = true, desc = "Switch to the 7th tab" })
vim.keymap.set('n', '<leader>8',  '8gt', { noremap = true, desc = "Switch to the 8th tab" })
vim.keymap.set('n', '<leader>9',  '9gt', { noremap = true, desc = "Switch to the 1st tab" })
vim.keymap.set('n', '<leader>0',  '<cmd>tablast<cr>', { noremap = true, desc = "Switch to the last tab"})
