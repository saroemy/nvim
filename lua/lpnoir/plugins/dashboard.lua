return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        {
          icon = '󰊳 ',
          desc = 'Update',
          group = '@property',
          action = 'Lazy update',
          key = 'u',
        },
        {
          icon = ' ',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon = ' ',
          desc = 'Home',
          group = 'DiagnosticHint',
          action = 'Explore ~/',
          key = 'h',
        },
        {
          icon = ' ',
          desc = 'Dotfiles',
          group = 'Number',
          action = 'Explore ~/.config/nvim',
          key = 'd',
        },
      },
    },
  },
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
