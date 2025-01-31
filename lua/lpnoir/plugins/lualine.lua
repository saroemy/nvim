return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_c = {
        {
          'buffers',
          component_separators = { left = '', right = '' },
          symbols = { alternate_file = '' },
        },
      },
    },
  },
}
