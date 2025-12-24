return  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
    require('lualine').setup {
        options = {
            theme = 'OceanicNext', -- or specify a theme like 'gruvbox', 'tokyonight', etc.
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
        },
    }
    end,
}
