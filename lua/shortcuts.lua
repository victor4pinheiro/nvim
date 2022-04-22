local api = vim.api
local table_key = { noremap = true, silent = true }

-- Key leader
vim.g.mapleader = ','

-- LuaTREE
api.nvim_set_keymap('', '<F2>', ':NvimTreeToggle<CR>', table_key)
api.nvim_set_keymap('', '<leader>r', ':NvimTreeRefresh<CR>', table_key)
api.nvim_set_keymap('', '<leader>n', ':NvimTreeFindFile<CR>', table_key)
