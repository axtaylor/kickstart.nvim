return {
  'projekt0n/github-nvim-theme',
  priority = 1000,
  config = function()
    require('github-theme').setup {
      options = {
        transparent = true,
        styles = {},
      },
      groups = {
        all = {
          ['@variable.member.python'] = { fg = '#F6A97F' },
          ['@variable.parameter.python'] = { fg = '#F6A97F' },
          -- White override.
          ['@property'] = { fg = '#ffffff' },
          ['@variable'] = { fg = '#ffffff' },
          -- Purple override
          ['@type.python'] = { fg = '#C8A2F3' },
          ['@constructor.python'] = { fg = '#C8A2F3' },
          -- Text
          String = { fg = '#A6D996' },
          -- Selections
          LineNr = { fg = '#ffffff' },
          TelescopeSelection = { bg = '#707782', fg = '#ffffff' },
          TelescopeSelectionCaret = { fg = '#ffffff', bg = '#707782' },
          CursorLine = { bg = '#707782' },
          Visual = { bg = '#707782' },
          LspReferenceText = { bg = '#707782' },
          LspReferenceRead = { bg = '#707782' },
          LspReferenceWrite = { bg = '#707782' },
        },
      },
    }
    vim.cmd.colorscheme 'github_dark'

    -- Force barbar transparency after colorscheme loads
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = '*',
      callback = function()
        local barbar_groups = {
          'BufferCurrent',
          'BufferCurrentIndex',
          'BufferCurrentMod',
          'BufferCurrentSign',
          'BufferCurrentTarget',
          'BufferCurrentIcon',
          'BufferInactive',
          'BufferInactiveIndex',
          'BufferInactiveMod',
          'BufferInactiveSign',
          'BufferInactiveTarget',
          'BufferInactiveIcon',
          'BufferVisible',
          'BufferVisibleIndex',
          'BufferVisibleMod',
          'BufferVisibleSign',
          'BufferVisibleTarget',
          'BufferVisibleIcon',
          'BufferTabpageFill',
          'BufferTabpages',
          'BufferOffset',
        }
        for _, group in ipairs(barbar_groups) do
          vim.api.nvim_set_hl(0, group, { bg = '#707782' })
        end
      end,
    })
  end,
}
