local opts = { noremap=true, silent=true }
vim.api.nvim_buf_set_keymap(0, "i", "@", "@<C-x><C-o>", opts)
vim.api.nvim_buf_set_keymap(0, "i", "#", "#<C-x><C-o>", opts)
