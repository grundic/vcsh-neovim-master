--[[ neovim config for managing plugins.
--]]

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Speed up loading Lua modules in Neovim to improve startup time.
  use 'lewis6991/impatient.nvim'

  -- Parsing your code into a syntax tree allows for manipulating the structure of your code in a more intelligent way
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Language Server Protocol.
  use 'neovim/nvim-lspconfig'

  use {'nvim-lua/lsp-status.nvim', requires = 'neovim/nvim-lspconfig'}

  -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible.
  use 'phaazon/hop.nvim'

  -- Colorschemes.
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/sonokai'

end)
