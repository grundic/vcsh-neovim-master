--[[ General settings for neovim.
--]]

-- Shortcuts to simplify configuration.
local cmd = vim.cmd
local opt, o, wo, bo, g = vim.opt, vim.o, vim.wo, vim.bo, vim.g

-- Leader/local leader
g.mapleader = [[,]]
g.maplocalleader = [[\]]

-- System settings
opt.compatible      = false
opt.mouse           = 'nivh'
opt.fileformats     = 'unix,mac'      -- support these in this order
opt.errorbells      = false
opt.visualbell      = false
opt.lazyredraw      = true            -- do not redraw while running macros (much faster)
opt.shortmess:append('c')             -- less messages.
opt.splitright      = true            -- add new windows towards the right.
opt.splitbelow      = true            -- .. and bottom.
opt.updatetime      = 500

-- Files and backups
opt.shada           = [[!,'100,<50,s10,h,/100]] -- shada configuration (hisory of files, search, etc).
opt.autowrite       = true            -- save the file when shell/cmd are run.
bo.autoread         = true            -- detect file modifications and reload.
bo.swapfile         = true            -- keep swap files for recovery.
bo.undofile         = true            -- maintain undo history between sessions.
opt.directory:append('/tmp//')        -- swap file directory (double slash for abs paths).
opt.backupdir:append('/tmp//')        -- directory for backups (double slash for abs paths).
opt.backupdir:remove('.')             -- don't keep backupas in the current directory.
opt.undodir:append('/tmp//')          -- directory for undos (double slash for abs paths).

-- Menu options
opt.wildmenu        = true
opt.pumheight       = 15              -- pop-up menu height.
opt.pumblend        = 15              -- pop-up menu transparency.
opt.wildmode        = 'longest,full'  -- zsh style command mode completion.
opt.wildignorecase  = true            -- case-insensitive filename completion
opt.wildignore:append('*.bak,*.o,*.info,*.swp,*.class,*.pyc,*~')
opt.wildignore:append('jar,*.rar,*.zip,*.gz,*.tgz')
opt.wildignore:append('*/.git/*,*/.hg/,*/.svn/*,*/__pycache__/*,*/build/**,tags,tmp/**')
opt.wildignore:append('*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico,*.avi,*.wmv,*flv,*.djvu,*.pdf,*.chm,*.ps,*.dvi')
opt.wildignore:append('*.pkl,*.DS_Store,*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv')

-- UI & visuals
g.sonokai_style = 'default'
g.sonokai_enable_italic = 1
cmd [[colorscheme sonokai]]
-- set transparrent background
cmd('hi Normal guibg=NONE ctermbg=NONE')

opt.termguicolors   = true
wo.number           = true            -- display line numbers.
wo.relativenumber   = true            -- display relative line numbers.
wo.list             = true            -- display tabs, trailing spaces, etc.
wo.cursorline       = true            -- hightlight line under cursor.
wo.showbreak        = '↪'             -- symbold to display on wrapped lines.
opt.listchars       = {               -- visualize invisible symbols.
  tab      = '→ ',
  eol      = '↲',
  nbsp     = '␣',
  trail    = '•',
  extends  = '⟩',
  precedes = '⟨',
}
opt.scrolloff       = 5               -- minimal number of screen lines to keep above and below the cursor.
opt.cmdheight       = 2               -- more space for commands and messages.

-- Editing options
local indent = 4
bo.autoindent       = true            -- copy indent from current line when starting a new line.
bo.smartindent      = true            -- be smart when indenting.
opt.expandtab       = true            -- enter spaces when tab is pressed.
opt.smarttab        = true            -- respect following options (shiftwidth and others).
opt.tabstop         = indent          -- tab spacing (settings below are just to unify it)
bo.softtabstop      = indent
bo.shiftwidth       = indent

bo.textwidth        = 100             -- maximum width of text that is being inserted.

-- Search/replace options
opt.incsearch       = true            -- highlight as you type you search phrase.
opt.inccommand      = 'nosplit'       -- shows the effects of substitution.
opt.hlsearch        = true            -- highlight last search pattern (:noh to clear).
opt.ignorecase      = true            -- ignore case in searches.
opt.smartcase       = true            -- turn on case search if capitals are in search.
opt.showmatch       = true            -- show matching brackets under cursor.
opt.signcolumn      = "number"        -- sacrifyce line number to display sign info.

-- Spellcheck
bo.spellfile        = '~/.local/share/nvim/site/spell/en.utf-8.add'
bo.spelllang        = 'en_us,ru_ru'
