local navic = require('nvim-navic')

require('lualine').setup({
  winbar = {
    lualine_a = {'filesize'},
    lualine_b = {
      { function() return navic.get_location() end, cond = navic.is_available }
    }
  },
  inactive_winbar = {
    lualine_a = {'filesize'},
    lualine_b = {
      { function() return navic.get_location() end, cond = navic.is_available }
    }
  }
})
