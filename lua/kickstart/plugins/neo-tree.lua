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
        }
      }
    }
  },
  config = function()
  require('neo-tree').setup {
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
        position = 'left',
      },
    },
  }

  -- Remove cursor line highlight in neo-tree
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'neo-tree',
    callback = function()
    vim.opt_local.cursorline = false
    end,
  })

  -- Clear the highlight groups and set file info text to white
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    callback = function()
    vim.api.nvim_set_hl(0, 'NeoTreeCursorLine', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeFileName', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = '#ffffff', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = '#ffffff', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeDimText', { fg = '#ffffff', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NeoTreeMessage', { fg = '#ffffff', bg = 'NONE' })
    end,
  })

  -- Apply immediately
  vim.schedule(function()
  vim.cmd 'doautocmd ColorScheme'
  end)
  end,  -- This 'end' was missing!
}
