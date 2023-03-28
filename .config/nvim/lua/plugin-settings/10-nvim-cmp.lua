-- nvim-cmp setup
local ok_cmp, cmp = pcall(require, "cmp")
local ok_luasnip, luasnip = pcall(require, "luasnip")

if not ok_cmp or not ok_luasnip then
  print("[ERROR] failed loading one of cmp or luasnip")
  return
end

--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

-- Helper functions {{{
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Next completion or move in snippet
local complete_or_snippet_next = function(fallback)
  if cmp.visible() then
    cmp.select_next_item()
  elseif luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  elseif has_words_before() then
    cmp.complete()
  else
    fallback()
  end
end

-- Previous completion or move in snippet
local complete_or_snippet_prev = function(fallback)
  if cmp.visible() then
    cmp.select_prev_item()
  elseif luasnip.jumpable(-1) then
    luasnip.jump(-1)
  else
    fallback()
end
end
-- }}}

cmp.setup({
  snippet = {
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body)
      luasnip.lsp_expand(args.body)
    end,
  },
  formatting = {
    format = function(entry, vim_item)
      local lspkind = require("lspkind")
      -- fancy icons and a name of kind
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      .. " "
      .. (
      ({
        Variable = "Var",
        Snippet = "Snip",
      })[vim_item.kind] or vim_item.kind
      )
      -- set a name for each source
      vim_item.menu = ({
        buffer = "[Buf]",
        nvim_lsp = "[LSP]",
        luasnip = "[Snip]",
        vsnip = "[Snip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[TeX]",
        cmp_tabnine = "[T9]",
        path = "[Path]",
        crates = "[Crate]",
      })[entry.source.name] or entry.source.name
      return vim_item
    end,
    deprecated = true,
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-u>"] = cmp.mapping.scroll_docs(4),
    ["<C-y>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),

    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<Up>"] = cmp.mapping(complete_or_snippet_prev, { "i", "s" }),
    ["<Down>"] = cmp.mapping(complete_or_snippet_next, { "i", "s" }),
    ["<C-n>"] = cmp.mapping(complete_or_snippet_next, { "i", "s" }),
    ["<C-p>"] = cmp.mapping(complete_or_snippet_prev, { "i", "s" }),
    ["<Tab>"] = cmp.mapping(complete_or_snippet_next, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(complete_or_snippet_prev, { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    --{ name = "cmp_tabnine" },
    { name = "buffer" },
    { name = "luasnip" },
    --{ name = "crates" },
    { name = "path" },
    --{ name = "look" },
    --{ name = "nvim_lua" },
  },
  window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
  },
  experimental = {
    ghost_text = false,
  },
})
