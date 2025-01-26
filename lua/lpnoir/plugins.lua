return {
  { -- Highlight todo, notes, etc in
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      sections = {
        lualine_c = {
          {
            'buffers',
            component_separators = { left = '|', right = '|' },
          },
        },
      },
    },
  },
  { -- Useful plugin to show you pending keybinds.
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
        { '<leader>w', group = '[W]indow operations' },
        { '<leader>f', group = '[F]ind' },
        { '<leader>g', group = '[G]it' },
        { '<leader>p', group = '[P]roject' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]how' },
        { '<leader>t', group = '[T]oggle' },
      },
    },
  },
  { -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  { -- Add surround functions
    --
    -- ysiw( surrounds word with parentheses
    -- cs"' changes quotes from " to '
    -- ds" removes surrounding quotes
    'tpope/vim-surround',
  },
}
