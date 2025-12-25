return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        use_libuv_file_watcher = true,
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
        filtered_items = {
          visible = true,
          hide_gitignored = false,
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Use single character symbols (with Nerd Font)
            added = '•',
            modified = '•',
            deleted = 'D',
            renamed = 'R',
            untracked = '',
            ignored = '',
            unstaged = '-',
            staged = '+',
            conflict = '',
          },
        },
      },

      event_handlers = {
        {
          event = 'file_added',
          handler = function()
            vim.cmd 'Neotree filesystem reveal'
          end,
        },
        {
          event = 'file_deleted',
          handler = function()
            vim.cmd 'Neotree filesystem reveal'
          end,
        },
        {
          event = 'file_moved',
          handler = function()
            vim.cmd 'Neotree filesystem reveal'
          end,
        },
      },
    }

    -- Clear the highlight groups and set file info text to white
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = '*',
      callback = function()
        vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = '#ffffff', bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = '#ffffff', bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg = '#919BBD' })
        vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { fg = '#ffffff' }) --# C4D0F8'
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitUntracked', { fg = '#1ABC21' }) --# C4D0F8'
        vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg = '#3CAEE9' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { fg = '#EFD4A0' })
        vim.api.nvim_set_hl(0, 'NeoTreeGitIgnored', { fg = '#919BBD' })
      end,
    })

    -- Apply immediately
    vim.schedule(function()
      vim.cmd 'doautocmd ColorScheme'
    end)
  end,
}
