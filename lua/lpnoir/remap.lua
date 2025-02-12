vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Use Ctrl-è for exit from insert mode
vim.keymap.set('i', '<C-è>', '<Esc>', { noremap = true, desc = 'Exit from insert mode' })

-- Save changes
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = '[S]ave file', silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<C-q>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })

-- Move selected lines up and down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up', silent = true })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down', silent = true })

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center', silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center', silent = true })

-- Get the text highlighted in visual mode and prepare a substitute command for it
vim.keymap.set('v', '<leader>s', [[y:%s/<C-r>"/<C-r>"/gI<Left><Left><Left>]])

-- Add blank line without exit from normal mode
vim.keymap.set('n', '<S-CR>', 'O<Esc>', { noremap = true })
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true })

-- YANK, PASTE AND DELETE
--
-- Yank in the system clipboard
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank in the system clipboard' })
-- Paste preserving the clipboard
vim.keymap.set('x', '<leader>p', '"_dP', { desc = '[P]aste preserving clipboard' })
-- Delete preserving clipboard
vim.keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete Preserving clipboard' })
vim.keymap.set('n', '<leader>d', '"_d', { desc = '[D]elete Preserving clipboard' })
-- Change preserving clipboard
vim.keymap.set('v', '<leader>c', '"_c', { desc = '[C]hange Preserving clipboard' })
vim.keymap.set('n', '<leader>c', '"_c', { desc = '[C]hange Preserving clipboard' })

-- DIAGNOSTIC
--
-- Show error on popup, useful for error copy
vim.keymap.set('n', '<leader>se', vim.diagnostic.open_float, { desc = 'Show error popup' })
-- Show diagnostics
vim.keymap.set('n', '<leader>sd', vim.diagnostic.setloclist, { desc = 'Show [D]iagnostics list' })

-- BUFFERS
--
-- Close the current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = '[X] Close buffer', silent = true })
-- Buffer navigation
vim.keymap.set('n', 'H', ':bprevious<CR>', { silent = true })
vim.keymap.set('n', 'L', ':bnext<CR>', { silent = true })

-- WINDOW
--
-- Change window dimension
vim.keymap.set('n', 'º', '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', 'ª', '<C-w>-', { desc = 'Decrease window height' })
vim.keymap.set('n', '¬', '<C-w><', { desc = 'Decrease window width' })
vim.keymap.set('n', '∆', '<C-w>>', { desc = 'Increase window width' })

-- PLUGINS
--
-- Create keymap for the Tree Explorer
vim.keymap.set('n', '<C-p>', ':NvimTreeToggle<CR>', { desc = '[P]roject [V]iew', silent = true })

-- Show dashboard
vim.keymap.set('n', '<leader>h', ':Dashboard<CR>', { desc = 'Go to [H]ome' })

-- GIT
--
-- Show git status
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' })
-- Show git preview hunk
vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', { desc = '[G]it preview [H]unk' })
