local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>s', ':FzfLua files<cr>', opts)
keymap('n', '<leader>/', ':FzfLua live_grep_resume<cr>', opts)
keymap('n', '<leader>lc', ':FzfLua git_commits<cr>', opts)
keymap('n', '<leader>ls', ':FzfLua git_status<cr>', opts)
keymap('v', '<leader>/', '<esc>:FzfLua grep_visual<cr>', opts)
