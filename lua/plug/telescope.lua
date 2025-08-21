local builtin = require('telescope.builtin')
local telescope = require('telescope')
vim.g.mapleader = " "
telescope.setup{
  defaults = {
    -- Опции по умолчанию
  },
}

-- Привязка клавиш для использования Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })

