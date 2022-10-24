-- options
  -- tab general settings
  vim.opt.expandtab = true
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 2
  -- fold general settings
  vim.opt.foldmethod = 'expr'
  vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
  -- open all folds by default
  vim.opt.foldenable = false
  -- use relativen line umbers
  vim.opt.relativenumber = true
  -- make sure current linse has true number
  vim.opt.number = true
  -- remove current mode below statusline
  vim.opt.showmode = false
  -- split vertical right
  vim.opt.splitright = true
  -- split horizontal below
  vim.opt.splitbelow = true
  -- enable emojis
  vim.opt.emoji = true
  -- persistent undo
  vim.opt.undofile = true
  vim.opt.undodir='/tmp'
  -- highlight current line
  vim.opt.cursorline = true
  -- allow space for signs
  vim.opt.signcolumn = 'yes'
  -- search smarter
  vim.opt.ignorecase = true
  vim.opt.smartcase = true

-- leader
vim.g.mapleader = ','

-- colorscheme setup
vim.cmd('colorscheme tokyonight-moon')

-- PackerCompile on write packages.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packages.lua source <afile> | PackerCompile
  augroup end
]])
