-- options
  -- tab general settings
  vim.opt.expandtab = true
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 2
  -- fold general settings
  vim.opt.foldmethod = 'indent'
  -- don't fold all by default
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
-- use the same python3 provider for nvim
vim.g.python3_host_prog = '~/.asdf/installs/python/3.12.0/bin/python'

-- colors override
vim.cmd([[
augroup custom_highlight
  au!
  au ColorScheme * hi Folded guibg=#eb7a34 guifg=#510875
  au ColorScheme * hi CursorLine guibg=#800000
  au ColorScheme * hi LspInlayHint guibg=#ffff00 guifg=#000000
augroup END
]])
