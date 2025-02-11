return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require 'telescope.builtin'

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find Buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp Tags' })
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = '[G]it [F]nd files ' })
    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })
    vim.keymap.set('v', '<leader>ff', function()
      -- Salva il modo corrente
      local mode = vim.fn.mode()

      -- Assicurati di essere in visual mode
      if mode == 'v' or mode == 'V' or mode == '' then
        -- Copia la selezione nel registro temporaneo
        vim.cmd 'normal! "vy'

        -- Prendi il contenuto del registro
        local selected_text = vim.fn.getreg 'v'

        -- Pulisci il testo da eventuali newline o spazi
        selected_text = selected_text:gsub('\n', ''):gsub('^%s*(.-)%s*$', '%1')

        -- Usa Telescope per cercare i file con il testo selezionato
        require('telescope.builtin').find_files {
          default_text = selected_text,
        }
      end
    end, { desc = '[F]ind [F]iles with selection' })
  end,
}
