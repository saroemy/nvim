vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- use JK for exit from insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, desc = 'Exit from insert mode' })

-- move selected lines up and down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down' })

-- show error on popup, usefull for error copy
vim.keymap.set('n', '<leader>se', ':lua vim.diagnostic.open_float()<CR>', { desc = 'Show error popup' })

-- paste preserving the clipboard
vim.keymap.set('x', '<leader>p', '"_dP', { desc = '[P]aste preserving clipboard' })

-- yank in the sistem clipboard
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })

-- delete preserving clipboard
vim.keymap.set('v', '<leader>d', '"_d', { desc = '[P]aste preserving clipboard' })
vim.keymap.set('n', '<leader>d', '"_d', { desc = '[P]aste preserving clipboard' })

-- save changes
vim.keymap.set('n', '<leader>s', ':w<CR>', { desc = '[W]rite file' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })
