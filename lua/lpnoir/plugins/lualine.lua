return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    tabline = {
      lualine_a = {
        {
          'buffers',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          symbols = { alternate_file = '' },
        },
      },
    },
  },
}
