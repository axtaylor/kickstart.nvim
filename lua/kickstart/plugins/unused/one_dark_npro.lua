return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'warm',
      transparent = true,
      colors = {
        -- You can override base colors here if needed
      },
      highlights = {
        -- Text modifications
        Normal = { fg = '#ffffff' },
        ['@property'] = { fg = '#ffffff' },
        ['@variable'] = { fg = '#ffffff' },
        -- Line number modifications
        LineNr = { fg = '#ffffff' },
        -- UI windows background
        NormalFloat = { bg = '#323D47' },
        -- Mason specific
        MasonNormal = { bg = '#323D47' },
        MasonHeader = { bg = '#323D47' },
        -- Lazy plugin manager
        LazyNormal = { bg = '#323D47' },
        -- Telescope
        TelescopeNormal = { bg = '#323D47' },
        TelescopeBorder = { bg = '#323D47' },
        TelescopePreviewTitle = { bg = '#323D47' },
        TelescopePromptTitle = { bg = '#323D47' },
        TelescopeResultsTitle = { bg = '#323D47' },
        TelescopePromptPrefix = { fg = '#ffffff' },
        -- Cursor Lines
        TelescopeSelection = { bg = '#707782', fg = '#ffffff' },
        TelescopeSelectionCaret = { fg = '#ffffff', bg = '#707782' },
        CursorLine = { bg = '#707782' },
        Visual = { bg = '#707782' },
        -- Other popups
        Pmenu = { bg = '#323D47' },
        PmenuSel = { bg = '#2a2b36' },
      },
    }
    require('onedark').load()
  end,
}
