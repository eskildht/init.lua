local navic = require('nvim-navic')

require('lualine').setup({
  winbar = {
    lualine_a = {'filesize'},
    lualine_b = {
      { navic.get_location, cond = navic.is_available }
    }
  },
  inactive_winbar = {
    lualine_a = {'filesize'},
    lualine_b = {
      { navic.get_location, cond = navic.is_available }
    }
  }
})
