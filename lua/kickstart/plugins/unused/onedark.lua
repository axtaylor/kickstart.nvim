return {

  'olimorris/onedarkpro.nvim',
  config = function()
    require('onedarkpro').setup {

      filetypes = {
        python = true,
        ruby = false,
      },
      options = {
        transparency = true,
      },
    }
  end,
}
