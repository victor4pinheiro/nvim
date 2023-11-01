local g = vim.g
local keymap = vim.keymap
local cmd = vim.cmd

g.mapleader = " "
keymap.set("n", "<leader>po", cmd.Ex)
keymap.set("n", "<leader>pc", cmd.Rex)
keymap.set("n", "<leader>w", cmd.w)
keymap.set("n", "<leader>q", cmd.q)
keymap.set("n", "<leader>bd", cmd.bd)
keymap.set("n", "<leader>so", cmd.so)
keymap.set("n", "<leader>t", ":20sp term://fish<CR>")

