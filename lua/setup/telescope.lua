local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>s', ':Telescope find_files<cr>', opts)
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<leader>b', ':Telescope buffers<cr>', opts)

require('telescope').setup({
  defaults = {
    path_display = {
      'truncate'
    },
    mappings = {
      i = {
        ['<c-j>'] = 'move_selection_next',
        ['<c-k>'] = 'move_selection_previous',
        ['<c-v>'] = 'select_vertical',
        ['<c-s>'] = 'select_horizontal'
      }
    }
  }
})
