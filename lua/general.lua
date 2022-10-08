-- options
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- leader
vim.g.mapleader = ','

-- colorscheme setup
vim.cmd('colorscheme tokyonight-moon')
