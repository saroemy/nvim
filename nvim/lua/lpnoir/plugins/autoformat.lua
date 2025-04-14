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
    format_on_save = function(bufnr)
      return nil
      -- local disable_filetypes = { c = true, cpp = true }
      -- if disable_filetypes[vim.bo[bufnr].filetype] then
      --   return nil
      -- else
      --   return {
      --     timeout_ms = 500,
      --     lsp_format = 'fallback',
      --   }
      -- end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      php = { 'php_cs_fixer' },
      twig = { 'djlint' },
      css = { 'prettier' },
      -- javascript = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      -- javascriptreact = { 'prettier' },
      -- html = { 'prettier' },
      -- json = { 'prettier' },
      -- yaml = { 'prettier' },
    },
    formatters = {
      php_cs_fixer = {
        command = vim.fn.stdpath 'data' .. '/mason/bin/php-cs-fixer',
        args = { 'fix', '--rules=@Symfony', '$FILENAME' },
      },
      djlint = {
        args = {
          '--max-line-length=160',
          '--max-attribute-length=160',
          '--blank-line-after-tag="load,extends,include,set,"',
          '--blank-line-before-tag="block,"',
          '--reformat',
          '-',
        },
      },
    },
  },
}
