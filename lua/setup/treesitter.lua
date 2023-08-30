require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua',
    'vim',
    'typescript',
    'javascript',
    'python',
    'markdown_inline',
    'make',
    'latex',
    'json',
    'html',
    'gitcommit',
    'gitignore',
    'gitattributes',
    'git_rebase',
    'git_config',
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
  }
})
