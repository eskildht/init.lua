require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'
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
  -- general-purpose command-line fuzzy finder
  use {
    'ibhagwan/fzf-lua',
    requires = 'kyazdani42/nvim-web-devicons'
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
  -- css colors (including tailwindcss)
  use 'brenoprata10/nvim-highlight-colors'
  -- floating terminal window
  use 'voldikss/vim-floaterm'
  -- autosave
  use {
    'Pocco81/auto-save.nvim',
    -- inline config as auto-save will be enabled when loaded by packer
    config = function()
      require('auto-save').setup({
        enabled = false
      })
      vim.api.nvim_set_keymap('n', '<leader>h', ':ASToggle<cr>', { noremap = true, silent = true })
    end
  }
  -- markdown preview
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    setup = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' }
  }
  -- formatters
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- standalone UI for nvim-lsp progress
  use 'j-hui/fidget.nvim'
  -- symbols outline
  use 'simrat39/symbols-outline.nvim'
  -- swap buffers
  use 'wesQ3/vim-windowswap'
  -- vimwiki
  use 'vimwiki/vimwiki'
  -- popup display that provides breadcrumbs like navigation
  use {
    'SmiteshP/nvim-navbuddy',
    requires = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'MunifTanjim/nui.nvim'
    }
  }
  use {
  'pwntester/octo.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'kyazdani42/nvim-web-devicons',
  }
}
end)
