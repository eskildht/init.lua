-- Set up nvim-cmp.
local cmp = require'cmp'
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i' }),
    ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping(cmp.mapping.abort(), { 'i', 'c' }),
    ['<CR>'] = cmp.mapping(cmp.mapping.confirm(), { 'i', 'c' })
  },
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, -- For ultisnips users.
    },
    {
      { name = 'buffer' }
    }
  ),
  completion = {
    completeopt = 'menu,menuone,noinsert'
  }
})

local cmdline_completeopt = 'menu,menuone,noinsert,noselect'

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  sources = {
    { name = 'buffer' }
  },
  completion = {
    completeopt = cmdline_completeopt
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources(
    {
      { name = 'path' }
    },
    {
      { name = 'cmdline' }
    }),
  completion = {
    completeopt = cmdline_completeopt
  }
})
