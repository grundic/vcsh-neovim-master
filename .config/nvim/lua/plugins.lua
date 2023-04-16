--[[ neovim config for managing plugins.
--]]

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Speed up loading Lua modules in Neovim to improve startup time.
  use 'lewis6991/impatient.nvim'

  -- Parsing your code into a syntax tree allows for manipulating the structure of your code in a more intelligent way
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    -- https://www.reddit.com/r/neovim/comments/107aoqo/problems_running_neovim_using_the_initlua_from/
    -- Need to wait until nvim 0.8.2
    commit = 'a2d7e78',
  }

  -- Highly extendable fuzzy finder over arbitrary lists.
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons'}
    }
  }

  -- A file browser extension for telescope.
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- Language Server Protocol.
  use {
    'neovim/nvim-lspconfig',
    requires = {
      "ray-x/lsp_signature.nvim", -- lsp signature hint when you type
    },
    -- after = { "completion" }, -- TODO: add `keymap` here as well
  }

  use {'nvim-lua/lsp-status.nvim', requires = 'neovim/nvim-lspconfig'}

  -- Autocompletion plugins.
  use({
      "hrsh7th/nvim-cmp", -- Autocompletion plugin
      as = "completion",
      after = { "nvim-treesitter" },
      requires = {
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        -- "hrsh7th/cmp-vsnip",
        -- "hrsh7th/vim-vsnip",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind-nvim", -- pictograms for completion types
        { "tzachar/cmp-tabnine", run = "./install.sh" }, -- TabNine source
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "kdheepak/cmp-latex-symbols",
        "octaltree/cmp-look", -- dictionary completion.
        "ray-x/lsp_signature.nvim", -- parameters completion.
      },
  })

  -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible.
  use 'phaazon/hop.nvim'

  -- Colorschemes.
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/sonokai'

  -- Miscelanious
  use 'bogado/file-line'
  use 'windwp/nvim-autopairs'
  use 'folke/which-key.nvim'
  use 'mhinz/vim-signify'

  -- Dynamically install other plugins from custom sources.
  --
  -- Example:
  --
  --    local packer = require('packer')
  --    packer.use 'some-plugin'
  vim.cmd('runtime! lua/extra-plugins*.lua')
end)
