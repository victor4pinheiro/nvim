local api = vim.api
local table_key = { noremap = true, silent = true }
local map = api.nvim_set_keymap
-- Key leader
vim.g.mapleader = ','

-- Bufferline
map('n', '<leader>q', ':bprevious<CR>', table_key)
map('n', '<leader>w', ':bnext<CR>', table_key)

map('n', '<leader>a', ':BufferLineMoveNext<CR>', table_key)
map('n', '<leader>s', ':BufferLineMovePrev<CR>', table_key)

map('n', '<leader>be', ':BufferLineSortByExtension<CR>', table_key)
map('n', '<leader>bd', ':BufferLineSortByDirectory<CR>', table_key)

map('n', '<leader>d', ':bd<CR>', table_key)


-- LuaTREE
map('n', '<A-e>', ':NvimTreeToggle<CR>', table_key)
map('n', '<A-r>', ':NvimTreeRefresh<CR>', table_key)
