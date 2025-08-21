vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')

vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
vim.keymap.set('n', '<leader>q', ':DapToggleBreakpoint<CR>')
-- vim.keymap.set('n', '<F5>', ':DapContinue<CR>')
vim.keymap.set('n', '<F5>', ':lua debugerStart()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>z', ':DapEvaluate<CR>')
vim.keymap.set('n', '<F10>', ':DapStepOver<CR>')
vim.keymap.set('n', '<F11>', ':DapStepInto<CR>')
vim.keymap.set('n', '<F12>', ':DapStepOut<CR>')
vim.keymap.set('n', '<leader>d', ':lua require("dapui").open()<CR>')
vim.keymap.set('n', '<leader>c', ':lua require("dapui").close()<CR>')



