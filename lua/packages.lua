require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'folke/tokyonight.nvim'
  -- greeter
  use {
    'goolord/alpha-nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- surround
  use 'tpope/vim-surround'
  -- comment
  use 'tpope/vim-commentary'
  -- repeat
  use 'tpope/vim-repeat'
  -- parser generator tool and incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- package manager for lsp servers, dap servers, linters and formatters
  use 'williamboman/mason.nvim'
  -- bridge mason.nvim with nvim-lspconfig
  use 'williamboman/mason-lspconfig.nvim'
  -- configs for the nvim lsp client
  use 'neovim/nvim-lspconfig'
  -- completion engine
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  -- snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  -- fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- native telescope sorter
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  -- media files preview in telescope
  use {
    'nvim-telescope/telescope-media-files.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  }
  -- diff view tool
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- git tool
  use 'tpope/vim-fugitive'
  -- autopairs
  use 'windwp/nvim-autopairs'
  -- autotag
  use 'windwp/nvim-ts-autotag'
  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  -- git symbols in sign column
  use 'lewis6991/gitsigns.nvim'
  -- tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons'
  }
end)
