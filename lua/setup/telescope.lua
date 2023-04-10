require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<c-j>'] = 'move_selection_next',
        ['<c-k>'] = 'move_selection_previous',
      }
    }
  }
})
