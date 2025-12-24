return {
    'karb94/neoscroll.nvim',
    opts = {},

    config = function()
    require('neoscroll').setup {
        hide_cursor = true,
        cursor_scrolls_alone = true,
        easing="linear",
        performance_mode = true,
    }

    local neoscroll = require 'neoscroll'

    -- Mouse scroll mapping
    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelUp>', function()
    neoscroll.scroll(-12, { move_cursor = false, duration = 215, performance_mode = true, })
    end)

    vim.keymap.set({ 'n', 'v', 'x' }, '<ScrollWheelDown>', function()
    neoscroll.scroll(12, { move_cursor = false, duration = 215, performance_mode = true, })
    end)
    end,
}
