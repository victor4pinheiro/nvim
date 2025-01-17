local cmd = vim.cmd
local utils = require("utils")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

---- Keymaps using the function
utils.set_keymap("n", "<leader>so", cmd.so)
utils.set_keymap("n", "<leader>po", cmd.Ex)
utils.set_keymap("n", "<leader>pc", cmd.Rex)
utils.set_keymap("n", "<leader>bd", cmd.bd)
utils.set_keymap("n", "<leader>w", cmd.w)
utils.set_keymap("n", "<leader>q", cmd.q)
utils.set_keymap("n", "<leader>so", cmd.so)
utils.set_keymap("n", "<leader>noh", cmd.noh)
utils.set_keymap("n", "<leader>t", ":10sp term://fish<CR>")

---- Buffers
-- Creation
utils.set_keymap("n", "<leader>vs", cmd.vs)
utils.set_keymap("n", "<leader>sp", cmd.sp)

-- Navigation
utils.set_keymap("n", "<leader>wh", "<C-W><C-H>")
utils.set_keymap("n", "<leader>wj", "<C-W><C-J>")
utils.set_keymap("n", "<leader>wk", "<C-W><C-K>")
utils.set_keymap("n", "<leader>wl", "<C-W><C-L>")

-- Moving windows
utils.set_keymap("n", "wmh", "<C-W><S-H>")
utils.set_keymap("n", "wmj", "<C-W><S-J>")
utils.set_keymap("n", "wmk", "<C-W><S-K>")
utils.set_keymap("n", "wml", "<C-W><S-L>")

-- Terminal
utils.set_keymap("t", "<Esc>", "<C-\\><C-n>")
