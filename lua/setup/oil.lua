require('oil').setup()

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>n', ':Oil --float %:h<cr>', opts)
