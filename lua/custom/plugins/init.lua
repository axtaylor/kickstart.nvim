-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {


    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'OceanicNext',  -- or specify a theme like 'gruvbox', 'tokyonight', etc.
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                },
            })
        end,
    },


    {
        'projekt0n/github-nvim-theme',
        -- priority = 1000,
        plugins,
        config = function()

        ---@diagnostic
        require('github-theme').setup {
            styles = {
                comments = { italic = false },
            },
        }
        -- vim.cmd.colorscheme 'github_dark_dimmed'
        end,
    },

    {
        'olimorris/onedarkpro.nvim',
        -- priority = 1000,
        config = function()
        require('onedarkpro').setup({
            transparent = true,
        })
        -- vim.cmd.colorscheme 'onedark'
        end,
    },





{
    "catppuccin/nvim",
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            transparent_background = true,
            
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = "#C4D0F8" },  -- Line numbers
                    CursorLineNr = { fg = "#C4D0F8" },  -- Current line number
                }
            end,
        })
        
        vim.cmd.colorscheme 'catppuccin-frappe'
        
        -- Additional override to ensure it applies
        vim.api.nvim_set_hl(0, 'LineNr', { fg = '#C4D0F8' })
        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#C4D0F8' })
    end,
},





    require 'kickstart.plugins.gitsigns',
    require 'kickstart.plugins.neo-tree',


{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_gitignored = false,
                },

                git_status = {
                    show_ignored = true,
                    show_untracked = true,
                    show_modified = true,
                    show_staged = true,
                },

                window = {
                    width = 35,
                    position = "left",
                }
            },
        })

        -- Remove cursor line highlight in neo-tree
        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'neo-tree',
            callback = function()
                vim.opt_local.cursorline = false
            end,
        })
        
        -- Clear the highlight groups and set text to white
        vim.api.nvim_create_autocmd('ColorScheme', {
            pattern = '*',
            callback = function()
                vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { bg = 'NONE' })
                vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { bg = 'NONE' })
                vim.api.nvim_set_hl(0, 'NeoTreeFileName', { bg = 'NONE' })
                
                -- Set file info text (Size, Last Modified, etc.) to white
                vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = '#ffffff', bg = 'NONE' })
                vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = '#ffffff', bg = 'NONE' })
                vim.api.nvim_set_hl(0, 'NeoTreeDimText', { fg = '#ffffff', bg = 'NONE' })
                vim.api.nvim_set_hl(0, 'NeoTreeMessage', { fg = '#ffffff', bg = 'NONE' })
            end,
        })
        
        -- Apply immediately
        vim.schedule(function()
            vim.cmd('doautocmd ColorScheme')
        end)
    end,
},






{
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },

    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        sidebar_filetypes = {
            NvimTree = true,
            ['neo-tree'] = {event = 'BufWipeout'},
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
            vim.cmd('doautocmd ColorScheme')
        end)
    end,

    version = '^1.0.0',
},



    { 
        'nvimtools/none-ls.nvim',
        dependencies = {
            'nvimtools/none-ls-extras.nvim',
            'jayp0521/mason-null-ls.nvim', -- ensure dependencies are installed
        }
    },


    {
        "karb94/neoscroll.nvim",
        opts = {},


        config = function()
        require('neoscroll').setup({
            hide_cursor = true,
        })

       local neoscroll = require('neoscroll')
        
        -- Mouse scroll mapping
            --vim.keymap.set({'n', 'v', 'x'}, '<ScrollWheelUp>', function()
            --    neoscroll.scroll(-15, { hide_cursor=true, duration = 225,})
            --end)


            --vim.keymap.set({'n', 'v', 'x'}, '<ScrollWheelDown>', function()
            --    neoscroll.scroll(15, { hide_cursor=true, duration = 225,})
            --end)

        end,
    },








}
