local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- save
keymap('n', '<c-s>', ':w<cr>', {})
keymap('i', '<c-s>', '<esc>:w<cr>a', {})

-- reload init.lua config
keymap('n', '<leader>r', ':so ~/.config/nvim/init.lua<cr>', {})

-- sync packages
keymap('n', '<leader>ps', ':PackerSync<cr>', {})

-- navigate between windows
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
