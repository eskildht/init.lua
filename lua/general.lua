-- options
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- leader
vim.g.mapleader = ','

-- colorscheme setup
vim.cmd('colorscheme tokyonight-moon')
