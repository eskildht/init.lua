local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>t', ':FloatermToggle<cr>', opts)
keymap('t', '<leader>t', '<c-\\><c-n>:FloatermToggle<cr>', opts)
-- current project docker refresh
keymap('n', '<leader>dr', ':FloatermNew --wintype=split --height=0.2 docker compose build && docker compose down && docker compose up -d<cr><c-\\><c-n>G<c-w>k', opts)
-- current project mock toggle
keymap('n', '<leader>dt', ':FloatermNew! --wintype=split --height=0.2 tail -1 "$E2E_TOGGLE_PATH" | read x && sed -i \'\' -e \'$d\' "$E2E_TOGGLE_PATH" && (if [[ $x == *"False"* ]]; then echo "E2E=\'True\'" >> "$E2E_TOGGLE_PATH"; else echo "E2E=\'False\'" >> "$E2E_TOGGLE_PATH"; fi;) && docker compose build && docker compose down && docker compose up -d && exit<cr><c-\\><c-n>G<c-w>k', opts)
