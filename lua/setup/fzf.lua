require('fzf-lua').setup({
  keymap = {
    builtin = {
      ['<C-d>'] = 'preview-page-down',
      ['<C-u>'] = 'preview-page-up',
    },
    fzf = {
      ['ctrl-q'] = 'select-all+accept'
    }
  },
  git = {
    commits = {
      fzf_opts = { ['--multi'] = true }, -- Enable multi-selection
      actions = {
        ['default'] = function(selected)
          local commits = {}
          for _, line in ipairs(selected) do
            local hash = line:match('^%s*(%w+)') -- Match the commit hash at the start of the line
            if hash then
              table.insert(commits, hash)
            end
          end

          if #commits == 1 then
            vim.cmd('DiffviewOpen ' .. commits[1] .. "^!")
          elseif #commits == 2 then
            vim.cmd('DiffviewOpen ' .. commits[2] .. '..' .. commits[1])
          else
            vim.notify('Select one or two commits', vim.log.levels.WARN)
          end
        end,
      },
    },
  },
})
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>sr', ':FzfLua resume<cr>', opts)
keymap('n', '<leader>sf', ':FzfLua files<cr>', opts)
keymap('n', '<leader>sg', ':FzfLua live_grep_glob<cr>', opts)
keymap('n', '<leader>/', ':FzfLua lgrep_curbuf<cr>', opts)
keymap('n', '<leader>sb', ':FzfLua buffers<cr>', opts)
keymap('n', '<leader>sc', ':FzfLua git_commits<cr>', opts)
keymap('n', '<leader>ss', ':FzfLua git_status<cr>', opts)
keymap('n', '<leader>sk', ':FzfLua keymaps<cr>', opts)
keymap('v', '<leader>sg', '<esc>:FzfLua grep_visual<cr>', opts)
keymap('v', '<leader>sr', '<esc>:FzfLua lsp_references<cr>', opts)
keymap('v', '<leader>si', '<esc>:FzfLua lsp_implementations<cr>', opts)
