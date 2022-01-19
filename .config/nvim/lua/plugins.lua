--[[ neovim config for managing plugins.
--]]

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Speed up loading Lua modules in Neovim to improve startup time.
  use 'lewis6991/impatient.nvim'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Colorschemes.
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/sonokai'

end)
