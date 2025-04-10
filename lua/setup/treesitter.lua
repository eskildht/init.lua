require('nvim-treesitter.install').prefer_git = false
require('nvim-treesitter.install').compilers = { 'zig' }
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua',
    'vim',
    'vimdoc',
    'typescript',
    'javascript',
    'python',
    'markdown',
    'markdown_inline',
    'make',
    'latex',
    'json',
    'html',
    -- 'gitcommit',
    -- 'gitignore',
    -- 'gitattributes',
    -- 'git_rebase',
    -- 'git_config',
    'fortran',
    'dockerfile',
    'csv',
    'comment',
    'cmake',
    'c',
    'c_sharp',
    'bash',
    'java',
    'jsdoc',
    'julia',
    'kotlin',
    'regex',
    'rust',
    'ruby',
    'scala',
    'css',
    'scss',
    'c',
    'cpp',
    'xml',
    'yaml',
    'tsx'
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
})
