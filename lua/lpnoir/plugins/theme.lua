return {
  'catppuccin/nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    transparent_background = true,
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)

    -- inserisci load the colorscheme here
    vim.cmd.colorscheme 'catppuccin-macchiato'

    -- vim.api.nvim_set_hl(0, 'normal', { bg = 'none' })
    -- vim.api.nvim_set_hl(0, 'normalFloat', { bg = 'none' })
  end,
}
