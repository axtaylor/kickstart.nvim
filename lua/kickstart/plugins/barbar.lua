return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },

    init = function()
    vim.g.barbar_auto_setup = false
    end,
    opts = {
        sidebar_filetypes = {
            NvimTree = true,
            ['neo-tree'] = { event = 'BufWipeout' },
        },
    },

    config = function(_, opts)
    require('barbar').setup(opts)

    -- Make all buffers look the same with transparent background
    vim.api.nvim_create_autocmd('ColorScheme', {
        pattern = '*',
        callback = function()
        -- Get foreground color from current buffer
        local current = vim.api.nvim_get_hl(0, { name = 'BufferCurrent' })

        -- Set all buffer highlights to have same fg, no bg
        local hl_groups = {
            'BufferInactive',
            'BufferInactiveIndex',
            'BufferInactiveMod',
            'BufferInactiveSign',
            'BufferInactiveTarget',
            'BufferVisible',
            'BufferVisibleIndex',
            'BufferVisibleMod',
            'BufferVisibleSign',
            'BufferVisibleTarget',
        }

        for _, hl in ipairs(hl_groups) do
            vim.api.nvim_set_hl(0, hl, { fg = current.fg, bg = 'NONE' })
            end
            end,
    })

    -- Apply immediately on startup
    vim.schedule(function()
    vim.cmd 'doautocmd ColorScheme'
    end)
    end,

    version = '^1.0.0',
}
