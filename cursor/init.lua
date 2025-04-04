------------------------------------------
-- CONFIGURAZIONE BASE
------------------------------------------
-- Imposta leader key
vim.keymap.set("n", "<Space>", "", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Salva cronologia undo e imposta memoria massima per undo
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- Salva modifiche
vim.keymap.set({ "n", "i" }, "<C-s>", "<Esc>:w<CR>", { desc = "[S]alva file", silent = true })

-- Mantieni il cursore centrato durante lo scorrimento (disabilitato)
-- vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scorri giù e centra', silent = true })
-- vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scorri su e centra', silent = true })

-- Rimuove l'evidenziazione dopo la ricerca
vim.keymap.set("n", "<Esc>", "<Esc>:noh<CR>", { noremap = true, silent = true })

------------------------------------------
-- INTEGRAZIONE VSCODE
------------------------------------------
-- Rimappa ":" per aprire la palette dei comandi di VSCode
vim.keymap.set('n', ':', function() require('vscode').action('workbench.action.showCommands') end, { desc = 'Apri palette comandi VSCode', silent = true })

-- Attiva modalità zen
vim.keymap.set('n', '<leader>z', function() require('vscode').action('workbench.action.toggleZenMode') end, { desc = 'Attiva/disattiva modalità ZEN', silent = true })

-- Quick fix
vim.keymap.set({"n", "v"}, "<leader>ca", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>", { desc = "Mostra azioni rapide", silent = true })

------------------------------------------
-- NAVIGAZIONE
------------------------------------------
-- Ricerca file
vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>", { desc = "Ricerca [F]ile", silent = true })

-- Ricerca testo nell'intero progetto (grep)
vim.keymap.set({ "n", "v" }, "<leader>fg", "<cmd>lua require('vscode').action('workbench.action.findInFiles')<CR>", { desc = "Ricerca [G]rep nel progetto", silent = true })

-- Attiva barra laterale
vim.keymap.set('n', '<C-p>', function() require('vscode').action('workbench.action.focusSideBar') end, { desc = 'Attiva barra laterale', silent = true })

-- Seleziona vista
vim.keymap.set('n', '<leader>fv', function() require('vscode').action('workbench.action.quickOpenView') end, { desc = 'Seleziona [V]ista', silent = true })

------------------------------------------
-- MANIPOLAZIONE TESTO
------------------------------------------
-- Gestione indentazione migliorata
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "Indenta a sinistra mantenendo selezione" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "Indenta a destra mantenendo selezione" })

-- Sposta testo su e giù
vim.keymap.set("v", "J", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Sposta riga giù" })
vim.keymap.set("v", "K", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Sposta riga su" })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true, desc = "Sposta selezione giù" })
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true, desc = "Sposta selezione su" })

-- Formatta documento
vim.keymap.set({ "n", "v" }, "<leader>f", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>", { desc = "Formatta documento", silent = true })

-- Aggiungi riga vuota senza uscire dalla modalità normale
vim.keymap.set('n', '<leader>O', 'O<Esc>', { noremap = true, desc = 'Aggiungi riga vuota sopra', silent = true })
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true, desc = 'Aggiungi riga vuota sotto', silent = true })

------------------------------------------
-- COPIA, INCOLLA E CANCELLAZIONE
------------------------------------------
-- Copia negli appunti di sistema
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Copia negli appunti di sistema', silent = true })
vim.keymap.set('n', '<leader>y', '"+y', { desc = 'Copia negli appunti di sistema', silent = true })

-- Incolla preservando gli appunti
vim.keymap.set('x', 'p', '"_dP', { desc = 'Incolla preservando appunti', silent = true })

-- Cancella preservando appunti
vim.keymap.set('v', '<leader>d', '"_d', { desc = 'Cancella preservando appunti', silent = true })
vim.keymap.set('n', '<leader>d', '"_d', { desc = 'Cancella preservando appunti', silent = true })

-- Cambia preservando appunti
vim.keymap.set('v', '<leader>c', '"_c', { desc = 'Cambia preservando appunti', silent = true })
vim.keymap.set('n', '<leader>c', '"_c', { desc = 'Cambia preservando appunti', silent = true })

-- Incolla dagli appunti di sistema
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { noremap = true, silent = true, desc = 'Incolla dagli appunti di sistema' })

------------------------------------------
-- DIAGNOSTICA
------------------------------------------
-- Mostra errore in popup, utile per copiare l'errore
vim.keymap.set({"n", "v"}, "<leader>se", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>", { desc = "Mostra [E]rrore", silent = true })

-- Mostra diagnostica
vim.keymap.set({"n", "v"}, "<leader>sd", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>", { desc = "Mostra [D]iagnostica", silent = true })

------------------------------------------
-- BUFFER
------------------------------------------
-- Chiudi buffer corrente usando API VSCode
vim.keymap.set("n", "<leader>x", function() require("vscode").action("workbench.action.closeActiveEditor") end, { desc = "Chiudi buffer", silent = true })

-- Navigazione buffer usando API VSCode
-- Il buffer successivo è stato mappato sui keymap di VSCode
vim.keymap.set("n", "<S-Tab>", function() require("vscode").action("workbench.action.previousEditor") end, { silent = true, desc = "Tab precedente" })

------------------------------------------
-- PROJECT MANAGER
------------------------------------------
vim.keymap.set({"n", "v"}, "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>", { desc = "Salva progetto", silent = true })
vim.keymap.set({"n", "v"}, "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>", { desc = "Apri progetto in nuova finestra", silent = true })
vim.keymap.set({"n", "v"}, "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>", { desc = "Modifica progetti", silent = true })

------------------------------------------
-- CODICE
------------------------------------------
-- Comprimere ed espandere il codice
vim.keymap.set({"n", "v"}, "<leader>cc", "<cmd>lua require('vscode').action('editor.fold')<CR>", { desc = "[C]omprimi [C]odice", silent = true })
vim.keymap.set({"n", "v"}, "<leader>ce", "<cmd>lua require('vscode').action('editor.unfold')<CR>", { desc = "[C]odice [E]spandi", silent = true })
