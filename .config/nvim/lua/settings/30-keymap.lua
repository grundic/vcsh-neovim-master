local keymap = vim.api.nvim_set_keymap

-- Avoid the Escape key.
keymap('i', 'kj', '<Esc>', {noremap = true, silent = true})

-- Toggle search highlight.
keymap('n', '<leader>l',  '(&hls && v:hlsearch ? ":nohls" : ":set hls")."\n"', {noremap = true, silent = true, expr = true})

-- toggle settings
keymap('', '<leader>ts',  '<cmd>set invspell spell?<cr>', { noremap = true })
keymap('', '<leader>tp',  '<cmd>set invpaste paste?<cr>', { noremap = true })
keymap('', '<leader>tn',  '<cmd>set invrnu rnu?<cr>', { noremap = true })

-- Window resizing using arrow keys.
keymap('n', '<left>',     '<c-w>>', { noremap = true })
keymap('n', '<right>',    '<c-w><', { noremap = true })
keymap('n', '<up>',       '<c-w>+', { noremap = true })
keymap('n', '<down>',     '<c-w>-', { noremap = true })

-- Better window navigation.
keymap('n', '<leader>s',  '<c-w>w', { noremap = true })
keymap('n', '<C-j>',      '<c-w>j', { noremap = true })
keymap('n', '<C-k>',      '<c-w>k', { noremap = true })
keymap('n', '<C-h>',      '<c-w>h', { noremap = true })
keymap('n', '<C-l>',      '<c-w>l', { noremap = true })

-- Tab navigation and movement
keymap('n', '<s-Tab>',    'gT', { noremap = true })
keymap('n', '<Tab>',      'gt', { noremap = true })
keymap('n', '<leader>t[', '<cmd>tabmove -1<cr>', { noremap = true })
keymap('n', '<leader>t]', '<cmd>tabmove +1<cr>', { noremap = true })
keymap('n', '<leader>1',  '1gt', { noremap = true })
keymap('n', '<leader>2',  '2gt', { noremap = true })
keymap('n', '<leader>3',  '3gt', { noremap = true })
keymap('n', '<leader>4',  '4gt', { noremap = true })
keymap('n', '<leader>5',  '5gt', { noremap = true })
keymap('n', '<leader>6',  '6gt', { noremap = true })
keymap('n', '<leader>7',  '7gt', { noremap = true })
keymap('n', '<leader>8',  '8gt', { noremap = true })
keymap('n', '<leader>9',  '9gt', { noremap = true })
keymap('n', '<leader>0',  '<cmd>tablast<cr>', { noremap = true })
