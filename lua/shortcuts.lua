local api = vim.api
local table_key = { noremap = true, silent = true }
local map = api.nvim_set_keymap
-- Key leader
vim.g.mapleader = ','

-- Bufferline
map('n', '<A-q>', ':bprevious<CR>', table_key)
map('n', '<A-w>', ':bnext<CR>', table_key)

map('n', '<leader>a', ':BufferLineMoveNext<CR>', table_key)
map('n', '<leader>s', ':BufferLineMovePrev<CR>', table_key)

map('n', '<leader>be', ':BufferLineSortByExtension<CR>', table_key)
map('n', '<leader>bd', ':BufferLineSortByDirectory<CR>', table_key)

map('n', '<A-d>', ':bd<CR>', table_key)

-- LuaTREE
map('n', '<A-e>', ':NvimTreeToggle<CR>', table_key)
map('n', '<A-r>', ':NvimTreeRefresh<CR>', table_key)

-- Telescope
api.nvim_set_keymap('', '<leader>ff', ':Telescope find_files<CR>', table_key)
api.nvim_set_keymap('', '<leader>fg', ':Telescope live_grep<CR>', table_key)
api.nvim_set_keymap('', '<leader>fb', ':Telescope buffers<CR>', table_key)
api.nvim_set_keymap('', '<leader>fh', ':Telescope help_tags<CR>', table_key)
