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
        -- { '<leader>w', group = '[W]indow operations' },
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
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Auto pairs opening symbols, auto close parentesis etc.
      require('mini.pairs').setup()

      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },

  -- { -- Add surround functions
  --   --
  --   -- ysiw( surrounds word with parentheses
  --   -- cs"' changes quotes from " to '
  --   -- ds" removes surrounding quotes
  --   'tpope/vim-surround',
  -- },
  {
    'christoomey/vim-tmux-navigator',
  },
}
