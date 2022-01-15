--[[ Personal public neovim configuration.

  Inspired by configurations of other people:

    * https://github.com/ChristianChiarulli/nvim
    * https://github.com/jdhao/nvim-config
    * https://github.com/mrjones2014/dotfiles/tree/master/.config/nvim
    * https://github.com/wbthomason/dotfiles/tree/linux/neovim/.config/nvim

--]]

-- Require impatient plugin for optimizing Lua code.
-- It is managed by vcsh and must be already installed.
require('impatient')

-- Personal configuration
require('disable-builtins')
require('settings')
require('autocommands')
require('plugins')

-- Disabled, since it requires neovim 0.7.0
--require('keymap').apply_default_keymaps()
