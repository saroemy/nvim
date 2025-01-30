return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    delay = 0,
    icons = {
      mappings = vim.g.have_nerd_font,
      keys = {},
    },
    -- Document existing key chains
    spec = {
      { '<leader>a', group = '[A]vante', mode = { 'n', 'v' } },
      { '<leader>b', group = '[B]uffer' },
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>f', group = '[F]ind' },
      { '<leader>g', group = '[G]it' },
      { '<leader>p', group = '[P]roject' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]how' },
      { '<leader>t', group = '[T]oggle' },
    },
  },
}
