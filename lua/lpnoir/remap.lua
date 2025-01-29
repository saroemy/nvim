vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Create keymap for the explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })

-- Use JK for exit from insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, desc = 'Exit from insert mode' })

-- Save changes
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = '[S]ave file' })

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


-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })

-- Move selected lines up and down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down' })

-- Show error on popup, useful for error copy
vim.keymap.set('n', '<leader>se', ':lua vim.diagnostic.open_float()<CR>', { desc = 'Show error popup' })

-- Scroll the page 
vim.keymap.set('n', 'º', '<C-y>', { noremap = true })
vim.keymap.set('n', 'ª', '<C-e>', { noremap = true })

-- Add blank line without exit from normal mode
vim.keymap.set('n', '<S-CR>', 'O<Esc>', { noremap = true })
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true })

-- Close the current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = '[X] Close buffer', silent = true })

-- Remap window prefix-key
-- vim.keymap.set('n', '<leader>w', '<C-w>', { desc = '[w]indow operations' })

-- Change window dimension
vim.keymap.set('n', '<M-Up>', '<C-w>+', { desc = 'Increase window height' })
vim.keymap.set('n', '<M-Down>', '<C-w>-', { desc = 'Decrease window height' })
vim.keymap.set('n', '<M-Left>', '<C-w><', { desc = 'Decrease window width' })
vim.keymap.set('n', '<M-Right>', '<C-w>>', { desc = 'Increase window width' })

