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
          -- ─────────────────────────
          -- Treesitter overrides
          -- ─────────────────────────
          ['@variable.member.python'] = { fg = '#F6A97F' },
          ['@variable.parameter.python'] = { fg = '#F6A97F' },
          ['@property'] = { fg = '#ffffff' },
          ['@variable'] = { fg = '#ffffff' },
          ['@type.python'] = { fg = '#C8A2F3' },
          ['@constructor.python'] = { fg = '#C8A2F3' },

          -- ─────────────────────────
          -- Text
          -- ─────────────────────────
          String = { fg = '#A6D996' },
          LineNr = { fg = '#ffffff' },
          NormalFloat = { bg = '#323D47' }, -- Floating windows
          Pmenu = { bg = '#323D47' },

          -- ─────────────────────────
          -- Selections / references
          -- ─────────────────────────
          CursorLine = { bg = '#707782' },
          Visual = { bg = '#707782' },
          TelescopeSelection = { fg = '#ffffff', bg = '#707782' },
          TelescopeSelectionCaret = { fg = '#ffffff', bg = '#707782' },
          LspReferenceText = { bg = '#707782' },
          LspReferenceRead = { bg = '#707782' },
          LspReferenceWrite = { bg = '#707782' },

          -- ─────────────────────────
          -- Barbar bufferline
          -- ─────────────────────────
          BufferCurrent = { fg = '#ffffff', bg = '#707782' },
          BufferCurrentIndex = { fg = '#ffffff', bg = '#707782' },
          BufferCurrentMod = { fg = '#EFD4A0', bg = '#707782' },
          BufferCurrentSign = { fg = '#1ABC21', bg = '#707782' },
          BufferCurrentTarget = { fg = '#F38BA8', bg = '#707782' },
          BufferCurrentIcon = { fg = '#ffffff', bg = '#707782' },

          BufferInactive = { fg = '#919BBD', bg = '#707782' },
          BufferInactiveIndex = { fg = '#919BBD', bg = '#707782' },
          BufferInactiveMod = { fg = '#EFD4A0', bg = '#707782' },
          BufferInactiveSign = { fg = '#919BBD', bg = '#707782' },
          BufferInactiveTarget = { fg = '#F38BA8', bg = '#707782' },
          BufferInactiveIcon = { fg = '#919BBD', bg = '#707782' },

          BufferVisible = { fg = '#ffffff', bg = '#707782' },
          BufferVisibleIndex = { fg = '#ffffff', bg = '#707782' },
          BufferVisibleMod = { fg = '#EFD4A0', bg = '#707782' },
          BufferVisibleSign = { fg = '#1ABC21', bg = '#707782' },
          BufferVisibleTarget = { fg = '#F38BA8', bg = '#707782' },
          BufferVisibleIcon = { fg = '#ffffff', bg = '#707782' },

          BufferTabpageFill = { bg = '#707782' },
          BufferTabpages = { fg = '#ffffff', bg = '#707782' },
          BufferOffset = { fg = '#ffffff', bg = '#707782' },
          BufferScrollArrow = { fg = '#ffffff', bg = '#707782' },
          BufferScrollArrowInactive = { fg = '#919BBD', bg = '#707782' },
        },
      },
    }

    vim.cmd.colorscheme 'github_dark'
  end,
}
