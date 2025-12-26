return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  version = '^1.0.0',
  opts = {
    --    sidebar_filetypes = {
    --      NvimTree = true,
    --      ['neo-tree'] = { event = 'BufWipeout' },
    --    },
  },
  config = function()
    require('barbar').setup {}

    -- Move to previous/next
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    --map('n', '<C-.>', '<cmd>bufferprevious<cr>', opts)
    map('n', '<Tab>', '<cmd>BufferNext<cr>', opts)
    map('n', '<A-.>', '<cmd>BufferClose<cr>', opts)
  end,
}
