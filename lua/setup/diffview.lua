require("diffview").setup({
  view = {
    merge_tool = {
      layout = "diff4_mixed"
    }
  }
})
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>do', ':DiffviewOpen<cr>', opts)
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<cr>', opts)
vim.keymap.set('n', '<leader>df', ':DiffviewFileHistory %<cr>', opts)
vim.keymap.set('n', '<leader>db', ':DiffviewFileHistory<cr>', opts)
