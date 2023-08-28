require('fzf-lua').setup({
  keymap = {
    builtin = {
      ['<C-d>'] = 'preview-page-down',
      ['<C-u>'] = 'preview-page-up',
    },
    fzf = {
      ['ctrl-q'] = 'select-all+accept'
    }
  }
})
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>sr', ':FzfLua resume<cr>', opts)
keymap('n', '<leader>sf', ':FzfLua files<cr>', opts)
keymap('n', '<leader>sg', ':FzfLua live_grep_glob<cr>', opts)
keymap('n', '<leader>/', ':FzfLua lgrep_curbuf<cr>', opts)
keymap('n', '<leader>sb', ':FzfLua buffers<cr>', opts)
keymap('n', '<leader>sc', ':FzfLua git_commits<cr>', opts)
keymap('n', '<leader>ss', ':FzfLua git_status<cr>', opts)
keymap('n', '<leader>sk', ':FzfLua keymaps<cr>', opts)
keymap('v', '<leader>sg', '<esc>:FzfLua grep_visual<cr>', opts)
