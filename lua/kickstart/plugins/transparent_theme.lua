-- Catppuccin theme with the background set to 323D47 and transparent bkg
return {
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      transparent_background = true, -- Keep main background transparent

      custom_highlights = function(colors)
        return {
          LineNr = { fg = '#C4D0F8' },
          CursorLineNr = { fg = '#C4D0F8' },

          -- UI windows background
          NormalFloat = { bg = '#323D47' }, -- Floating windows
          -- FloatBorder = { bg = '#323D47' }, -- Floating window borders

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
          TelescopeSelection = { bg = '#464C4F' }, -- Cursor Line
          CursorLine = { bg = '#464C4F' },-- Cursor Line

          -- Other popups
          Pmenu = { bg = '#323D47' }, -- Completion menu
          -- PmenuSel = { bg = '#2a2b36'' }, -- Selected item in completion
        }
      end,
    }

    vim.cmd.colorscheme 'catppuccin-frappe'

    -- Additional overrides for UI elements
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#323D47' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#323D47' })
    vim.api.nvim_set_hl(0, 'MasonNormal', { bg = '#323D47' })
    vim.api.nvim_set_hl(0, 'LazyNormal', { bg = '#323D47' })
    vim.api.nvim_set_hl(0, 'Pmenu', { bg = '#323D47' })

    -- Line numbers
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#C4D0F8' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#C4D0F8' })
  end,
}
