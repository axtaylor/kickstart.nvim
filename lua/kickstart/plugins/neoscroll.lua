return {
  'karb94/neoscroll.nvim',
  opts = {},

  config = function()
    require('neoscroll').setup {
      hide_cursor = true,
      cursor_scrolls_alone = true,
      easing = 'linear',
      performance_mode = false,
    }

    local neoscroll = require 'neoscroll'

    -- Mouse scroll mapping
    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelUp>', function()
      neoscroll.scroll(-15, { move_cursor = false, duration = 250, performance_mode = true })
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelDown>', function()
      neoscroll.scroll(15, { move_cursor = false, duration = 250, performance_mode = true })
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<C-u>', function()
      neoscroll.scroll(-25, { move_cursor = false, duration = 400, performance_mode = true }) -- -15, 250.
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<C-d>', function()
      neoscroll.scroll(25, { move_cursor = false, duration = 400, performance_mode = true })
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<C-b>', function()
      neoscroll.scroll(-25, { move_cursor = false, duration = 400, performance_mode = true })
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<C-f>', function()
      neoscroll.scroll(25, { move_cursor = false, duration = 400, performance_mode = true })
    end)
  end,
}
