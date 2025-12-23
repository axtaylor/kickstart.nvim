-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {






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
        vim.cmd.colorscheme 'onedark'
        end,
    },

    {
        "catppuccin/nvim",
        priority = 1000,
        config = function()
        require('catppuccin').setup({

            transparent = true,
        })
        -- vim.cmd.colorscheme 'catppuccin-latte'
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
                    visible = true,  -- Show all files, including ignored ones
                    hide_gitignored = false,  -- Don't hide git-ignored files
                    -- follow_current_file = true,  -- Follow the current file in the tree

                },

                git_status = {
                    show_ignored = true,  -- Show git-ignored files and directories
                    show_untracked = true,  -- Show untracked files
                    show_modified = true,  -- Show modified files
                    show_staged = true,  -- Show staged files

                },

                window = {
                    width = 35,  -- Width of Neo-tree window
                    position = "left",  -- Position of the window (left or right)
                }
            },
        })
        end,
    },






    {
         'nvim-lualine/lualine.nvim',
         dependencies = { 'nvim-tree/nvim-web-devicons' },

    },






    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },

        init = function() vim.g.barbar_auto_setup = false end,
        opts = {

            sidebar_filetypes = {

                NvimTree = true,
                ['neo-tree'] = {event = 'BufWipeout'},

            },

        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
        },

        version = '^1.0.0', -- optional: only update when a new 1.x version is released
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
            vim.keymap.set({'n', 'v', 'x'}, '<ScrollWheelUp>', function()
                neoscroll.scroll(-15, { hide_cursor=true, duration = 225,})
            end)


            vim.keymap.set({'n', 'v', 'x'}, '<ScrollWheelDown>', function()
                neoscroll.scroll(15, { hide_cursor=true, duration = 225,})
            end)

        end,
    },

    







}
