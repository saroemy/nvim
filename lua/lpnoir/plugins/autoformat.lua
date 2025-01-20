return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      php = { 'php_cs_fixer' },
    },
    formatters = {
      php_cs_fixer = {
        command = vim.fn.stdpath 'data' .. '/mason/bin/php-cs-fixer', -- Percorso corretto
        args = { 'fix', '--rules=@Symfony', '$FILENAME' },
      },
    },
  },
}
