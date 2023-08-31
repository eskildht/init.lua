local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- colorschemes
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd('colorscheme tokyonight-moon')
    end
  },
  'ellisonleao/gruvbox.nvim',
  -- greeter
  {
    'goolord/alpha-nvim',
    dependencies = 'kyazdani42/nvim-web-devicons'
  },
  -- surround
  'tpope/vim-surround',
  -- comment
  'tpope/vim-commentary',
  -- repeat
  'tpope/vim-repeat',
  -- parser generator tool and incremental parsing library
  'nvim-treesitter/nvim-treesitter',
  -- package manager for lsp servers, dap servers, linters and formatters
  'williamboman/mason.nvim',
  -- bridge mason.nvim with nvim-lspconfig
  'williamboman/mason-lspconfig.nvim',
  -- configs for the nvim lsp client
  'neovim/nvim-lspconfig',
  -- completion engine
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'quangnguyen30192/cmp-nvim-ultisnips',
  -- snippets
  'SirVer/ultisnips',
  'honza/vim-snippets',
  -- general-purpose command-line fuzzy finder
  {
    'ibhagwan/fzf-lua',
    dependencies = 'kyazdani42/nvim-web-devicons'
  },
  -- diff view tool
  {
    'sindrets/diffview.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
  },
  -- git tool
  'tpope/vim-fugitive',
  -- autopairs
  'windwp/nvim-autopairs',
  -- autotag
  'windwp/nvim-ts-autotag',
  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  },
  -- git symbols in sign column
  'lewis6991/gitsigns.nvim',
  -- css colors (including tailwindcss)
  'brenoprata10/nvim-highlight-colors',
  -- floating terminal window
  'voldikss/vim-floaterm',
  -- markdown preview
  {
    'iamcco/markdown-preview.nvim',
    build = 'cd app && yarn install',
    config = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' }
  },
  -- standalone UI for nvim-lsp progress
  'j-hui/fidget.nvim',
  -- symbols outline
  'simrat39/symbols-outline.nvim',
  -- swap buffers
  'wesQ3/vim-windowswap',
  -- vimwiki
  'vimwiki/vimwiki',
  -- popup display that provides breadcrumbs like navigation
  {
    'SmiteshP/nvim-navbuddy',
    dependencies = {
      'neovim/nvim-lspconfig',
      'SmiteshP/nvim-navic',
      'MunifTanjim/nui.nvim'
    },
    config = function()
      require('nvim-navbuddy').setup({
        icons = {
          File = "󰈙 ",
          Module = " ",
          Namespace = " ",
          Package = " ",
          Class = "󰠱 ",
          Method = "󰊕 ",
          Property = "󰜢 ",
          Field = "󰇽 ",
          Constructor = " ",
          Enum = " ",
          Interface = " ",
          Function = "󰊕 ",
          Variable = "󰂡 ",
          Constant = "󰏿 ",
          String = " ",
          Number = " ",
          Boolean = " ",
          Array = " ",
          Object = " ",
          Key = " ",
          Null = "󰟢 ",
          EnumMember = " ",
          Struct = "󰠱 ",
          Event = " ",
          Operator = " ",
          TypeParameter = " ",
        },
      })
    end
  },
  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    }
  },
  'stevearc/oil.nvim',
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter' },
    config = function()
      require('treesj').setup({
        use_default_keymaps = false,
        max_join_length = 960
      })
      local keymap = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      keymap('n', '<leader>m', ':TSJToggle<cr>', opts)
    end,
  },
  {
    'ggandor/leap.nvim',
    config = function ()
      require('leap').add_default_mappings()
    end
  },
  -- file system browser
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  -- Highly experimental plugin that completly replaces messages, cmdline and the popupmenu.
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },

})
