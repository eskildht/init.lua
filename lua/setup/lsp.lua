-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>a', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gv', ':vs | lua vim.lsp.buf.definition()<cr>', bufopts)
  vim.keymap.set('n', 'gs', ':sp | lua vim.lsp.buf.definition()<cr>', bufopts)
  vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>q', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.keymap.set('n', '<leader>l', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }), { bufnr = bufnr }) end, bufopts)
  vim.keymap.set('n', '<leader>vl', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_config })
  end, { desc = 'Toggle diagnostic virtual_lines' })
  vim.keymap.set('n', '<leader>vt', function()
    local new_config = not vim.diagnostic.config().virtual_text
    vim.diagnostic.config({ virtual_text = new_config })
  end, { desc = 'Toggle diagnostic virtual_text' })

  if client.server_capabilities.documentSymbolProvider then
    -- attach nvim-navbuddy
    require('nvim-navbuddy').attach(client, bufnr)
  end

  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "☠",
        [vim.diagnostic.severity.WARN] = "⚠",
        [vim.diagnostic.severity.INFO] = "",
        [vim.diagnostic.severity.HINT] = "☭",
      },
    },
  })
end

require('mason').setup()
require('mason-lspconfig').setup({
  -- all servers set up via lspconfig will be installed
  automatic_installation = true
})

local lspconfig = require('lspconfig')
-- cmp integration
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
      diagnostics = {
        globals = { 'vim', 'use' }
      }
    }
  }
})
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities
})
require("typescript-tools").setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    tsserver_file_preferences = {
      importModuleSpecifierPreference = "relative"
    }
  }
})
-- lspconfig.eslint.setup({
--   on_attach = function(client, bufnr)
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       buffer = bufnr,
--       command = "EslintFixAll",
--     })
--     on_attach(client, bufnr)
--   end,
--   capabilities = capabilities,
--   on_new_config = function(config, new_root_dir)
--     config.settings.workspaceFolder = {
--       uri = vim.uri_from_fname(new_root_dir),
--       name = vim.fn.fnamemodify(new_root_dir, ':t')
--     }
--   end,
-- })
vim.env.ESLINT_D_PPID = vim.fn.getpid()
require('lint').linters_by_ft = {
  javascript = {'eslint_d'},
  typescript = {'eslint_d'},
}
vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
  callback = function()
    require("lint").try_lint("eslint_d")
  end,
})
lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilities
})
