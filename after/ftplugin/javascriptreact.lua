vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

vim.api.nvim_set_keymap('n', '<leader>.', ':%!prettier --stdin-filepath %<cr>',{ noremap = true, silent = true })
