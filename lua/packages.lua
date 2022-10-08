require('packer').startup(function()
  -- package manager packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'folke/tokyonight.nvim'
  -- greeter
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  require('setup/alpha')
  -- surround
  use 'tpope/vim-surround'
  -- comment
  use 'tpope/vim-commentary'
  -- repeat
  use 'tpope/vim-repeat'
  -- parser generator tool and incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  require('setup/treesitter')
  -- package manager for lsp servers, dap servers, linters and formatters
  use 'williamboman/mason.nvim'
  -- lsp
  use {
    -- bridge mason.nvim with nvim-lspconfig
    'williamboman/mason-lspconfig.nvim',
    -- configs for the nvim lsp client
    'neovim/nvim-lspconfig'
  }
  require('setup/lsp')
end)
