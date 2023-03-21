vim.cmd([[
  let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'custom_wiki2html': 'vimwiki_markdown'}]
]])

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>i', ':VimwikiIndex<cr>:lcd %:h<cr>', opts)
