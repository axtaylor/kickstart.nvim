-- Catppuccin theme with the background set to 323D47 and transparent bkg
return {
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      transparent_background = true, -- Keep main background transparent

      custom_highlights = function(colors)
        return {
          -- Text modifications
          Normal = { fg = '#ffffff' }, -- Base text, mason...
          ['@property'] = { fg = '#ffffff' }, -- IDE text base
          ['@variable'] = { fg = '#ffffff' }, -- Ide text base two

          -- Line number modifications
          LineNr = { fg = '#ffffff' }, -- #C4D0F8

          -- UI windows background
          NormalFloat = { bg = '#323D47' }, -- Floating windows

          -- Mason specific
          MasonNormal = { bg = '#323D47' },
          MasonHeader = { bg = '#323D47' },

          -- Lazy plugin manager
          LazyNormal = { bg = '#323D47' },

          -- Telescope
          TelescopeNormal = { bg = '#323D47' }, -- Main Content area
          TelescopeBorder = { bg = '#323D47' }, -- Border
          TelescopePreviewTitle = { bg = '#323D47' }, -- Heading Bkg
          TelescopePromptTitle = { bg = '#323D47' }, -- Heading Bkg
          TelescopeResultsTitle = { bg = '#323D47' }, -- Heading Bkg
          TelescopePromptPrefix = { fg = '#ffffff' },

          -- Cursor Lines
          TelescopeSelection = { bg = '#707782', fg = '#ffffff' }, -- Cursor Line
          TelescopeSelectionCaret = { fg = '#ffffff', bg = '#707782' },
          CursorLine = { bg = '#707782' }, -- Cursor Line '#595F69' '#7e8590'
          Visual = { bg = '#707782' },

          -- Other popups
          Pmenu = { bg = '#323D47' }, -- Completion menu
          -- PmenuSel = { bg = '#2a2b36'' }, -- Selected item in completion
        }
      end,
    }

    vim.cmd.colorscheme 'catppuccin-frappe'

    -- Additional overrides for UI elements
    --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#323D47' })
  end,
}
