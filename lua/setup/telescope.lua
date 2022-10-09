local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>s', ':lua require("telescope.builtin").find_files()<cr>', opts)
vim.keymap.set('n', '<leader>g', ':lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', '<leader>b', ':lua require("telescope.builtin").buffers()<cr>', opts)
vim.keymap.set('n', '<leader>c', ':lua require("telescope.builtin").git_commits()<cr>', opts)

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
