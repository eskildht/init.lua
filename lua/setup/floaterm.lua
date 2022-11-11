local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>t', ':FloatermToggle<cr>', opts)
keymap('t', '<leader>t', '<c-\\><c-n>:FloatermToggle<cr>', opts)
-- current project docker start
keymap('n', '<leader>ds', ':FloatermNew --wintype=split --height=0.2 "$PROJECT_DIR"/bin/start.sh<cr><c-\\><c-n>G<c-w>k', opts)
-- current project docker mock start
keymap('n', '<leader>dm', ':FloatermNew --wintype=split --height=0.2 "$PROJECT_DIR"/bin/start.sh --mock<cr><c-\\><c-n>G<c-w>k', opts)
