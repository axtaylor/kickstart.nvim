return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },

  opts = {
    sidebar_filetypes = {
      NvimTree = true,
      ['neo-tree'] = { event = 'BufWipeout' },
    },
  },

  version = '^1.0.0',
}
