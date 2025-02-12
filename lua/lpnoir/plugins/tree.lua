return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    on_attach = function(bufnr)
      local api = require 'nvim-tree.api'

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- remove a default
      vim.keymap.del('n', '<C-]>', { buffer = bufnr })
      vim.keymap.del('n', 'H', { buffer = bufnr })
      vim.keymap.del('n', 'L', { buffer = bufnr })

      -- custom mappings
      vim.keymap.set('n', '<C-d>', api.tree.change_root_to_node, opts 'CD')
      vim.keymap.set('n', 'hf', api.tree.toggle_hidden_filter, opts 'Toggle Filter: Dotfiles')
    end,
    git = { ignore = false },
    filters = { custom = { '^.git$' } },
    live_filter = {
      always_show_folders = false,
    },
  },
}
