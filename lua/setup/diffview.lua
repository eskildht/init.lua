local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>do', ':DiffviewOpen<cr>', opts)
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<cr>', opts)
vim.keymap.set('n', '<leader>dfh', ':DiffviewFileHistory %<cr>', opts)
vim.keymap.set('n', '<leader>dbh', ':DiffviewFileHistory<cr>', opts)
