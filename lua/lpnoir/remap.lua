vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Create keymap for the explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })

-- Use JK for exit from insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, desc = 'Exit from insert mode' })

-- Move selected lines up and down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down' })

-- Show error on popup, useful for error copy
vim.keymap.set('n', '<leader>se', ':lua vim.diagnostic.open_float()<CR>', { desc = 'Show error popup' })

-- Yank in the system clipboard
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })

-- Paste preserving the clipboard
vim.keymap.set('x', '<leader>p', '"_dP', { desc = '[P]aste preserving clipboard' })

-- Delete preserving clipboard
vim.keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete Preserving clipboard' })
vim.keymap.set('n', '<leader>d', '"_d', { desc = '[D]elete Preserving clipboard' })

-- Save changes
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = '[W]rite file' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })

-- Scroll the page and center the cursor
vim.keymap.set('n', '<C-k>', '<C-y>', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-e>', { noremap = true })

-- Add blank line without exit from normal mode
vim.keymap.set('n', '<S-CR>', 'O<Esc>', { noremap = true })
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true })

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Close the current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = '[X] Close buffer and show buffer picker', silent = true })
