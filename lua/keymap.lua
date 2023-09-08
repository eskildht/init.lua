local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- save
keymap('n', '<c-s>', ':w<cr>', {})
keymap('i', '<c-s>', '<esc>:w<cr>a', {})

-- navigate between windows
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- disable hl with 2 esc
keymap('n', '<esc>', ':noh<cr>', opts)

-- cd one up
keymap('n', '<leader>-', ':cd ..<cr>', opts)

-- select previous visual selection
keymap('n', '<leader>pv', 'gv', opts)
