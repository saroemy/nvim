return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
    theme = 'hyper',
    change_to_vcs_root = true,
    config = {
      week_header = {
        enable = true,
      },
      project = {
        enable = true,
        limit = 8,
        icon = ' ',
        label = 'Progetti Recenti',
        action = function(path)
          vim.cmd('cd ' .. vim.fn.fnameescape(path))
          require('telescope.builtin').find_files()
        end,
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
          action = function()
            local api = require 'nvim-tree.api'
            api.tree.toggle()
            api.tree.change_root '~/'
            api.tree.focus()
            vim.cmd 'normal hf'
          end,
          key = 'h',
        },
        {
          icon = ' ',
          desc = 'Dotfiles',
          group = 'Number',
          action = function()
            vim.cmd 'cd ~/2Aree/dotfiles/'
            require('telescope.builtin').find_files { cwd = '~/2Aree/dotfiles/' }
          end,
          key = 'd',
        },
      },
    },
  },
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
