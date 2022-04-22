local api = vim.api
local table_key = { noremap = true, silent = true }

-- Key leader
vim.g.mapleader = ','

-- Bufferline
api.nvim_set_keymap('', '<leader>w', ':bprevious<CR>', table_key)
api.nvim_set_keymap('', '<leader>q', ':bnext<CR>', table_key)

api.nvim_set_keymap('', '<leader>a', ':BufferLineMoveNext<CR>', table_key)
api.nvim_set_keymap('', '<leader>s', ':BufferLineMovePrev<CR>', table_key)

api.nvim_set_keymap('', '<leader>be', ':BufferLineSortByExtension<CR>', table_key)
api.nvim_set_keymap('', '<leader>bd', ':BufferLineSortByDirectory<CR>', table_key)

api.nvim_set_keymap('', '<eader>gb', ':BufferLinePick<CR>', table_key)

-- LuaTREE
api.nvim_set_keymap('', '<A-e>', ':NvimTreeToggle<CR>', table_key)
api.nvim_set_keymap('', '<A-r>', ':NvimTreeRefresh<CR>', table_key)
