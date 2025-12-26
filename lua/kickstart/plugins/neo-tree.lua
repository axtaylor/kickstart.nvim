return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<C-\\>', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
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
      enable_diagnostics = false,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_gitignored = false,
        },
      },
      default_component_configs = {
        git_status = {
          --enabled = false,
          symbols = {
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

    -- Set highlights ONCE (no autocmds)
    vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg = '#ffffff' })
    vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = '#ffffff', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = '#ffffff', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeDotFile', { fg = '#919BBD' })
    vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { fg = '#ffffff' })
    vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#ffffff' })
    vim.api.nvim_set_hl(0, 'NeoTreeGitUntracked', { fg = '#1ABC21' })
    vim.api.nvim_set_hl(0, 'NeoTreeDirectoryIcon', { fg = '#3CAEE9' })
    vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { fg = '#EFD4A0' })
    vim.api.nvim_set_hl(0, 'NeoTreeGitIgnored', { fg = '#919BBD' })
  end,
}
