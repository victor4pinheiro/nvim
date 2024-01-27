local g = vim.g
local keymap = vim.keymap
local cmd = vim.cmd

g.mapleader = " "
keymap.set("n", "<leader>so", cmd.so)
keymap.set("n", "<leader>po", cmd.Ex)
keymap.set("n", "<leader>pc", cmd.Rex)
keymap.set("n", "<leader>w", cmd.w)
keymap.set("n", "<leader>q", cmd.q)
keymap.set("n", "<leader>bd", cmd.bd)
keymap.set("n", "<leader>so", cmd.so)
keymap.set("n", "<leader>noh", cmd.noh)
keymap.set("n", "<leader>t", ":10sp term://fish<CR>")

--- Buffers
-- Creation
keymap.set("n", "<leader>vs", cmd.vs)
keymap.set("n", "<leader>sp", cmd.sp)

-- Navigation
keymap.set("n", "<leader>wh", "<C-W><C-H>")
keymap.set("n", "<leader>wj", "<C-W><C-J>")
keymap.set("n", "<leader>wk", "<C-W><C-K>")
keymap.set("n", "<leader>wl", "<C-W><C-L>")

-- Moving windows
keymap.set("n", "wmh", "<C-W><S-H>")
keymap.set("n", "wmj", "<C-W><S-J>")
keymap.set("n", "wmk", "<C-W><S-K>")
keymap.set("n", "wml", "<C-W><S-L>")

--- Terminal

keymap.set("t", "<Esc>", "<C-\\><C-n>")
