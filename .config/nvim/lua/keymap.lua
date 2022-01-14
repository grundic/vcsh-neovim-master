--[[ neovim config for defining various keymaps.

  Please note, this is currently not supported and requires version 0.7.0
  Therefore I disable it for now. The rest of the configuration could be 
  found here: https://github.com/mrjones2014/dotfiles/blob/master/.config/nvim/lua/keymap.lua
--]]

local M = {}

local function bind(keymaps)
  for _, keymap in pairs(keymaps) do
    local opts = keymap.opts or {}
    if opts.silent == nil then
      opts.silent = true
    end
    vim.keymap.set(keymap.mode or 'n', keymap[1], keymap[2], opts)
  end
end

function M.apply_default_keymaps()
  bind({
    -- jk is mapped to escape by better-escape.nvim plugin
    -- make escape work in terminal mode
    { '<ESC>', '<C-\\><C-n>', mode = 't' },
    { 'jk', '<C-\\><C-n>', mode = 't' },
  })
end

return M
