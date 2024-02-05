local g = vim.g
local keymap = vim.keymap
local cmd = vim.cmd

g.mapleader = " "

--- Function for setting keymaps
local function set_keymap(mode, lhs, rhs, opts)
  keymap.set(mode, lhs, rhs, opts or { silent = true, noremap = true })
end

-- Keymaps using the function
set_keymap("n", "<leader>so", cmd.so)
set_keymap("n", "<leader>po", cmd.Ex)
set_keymap("n", "<leader>pc", cmd.Rex)
set_keymap("n", "<leader>bd", cmd.bd)
set_keymap("n", "<leader>w", cmd.w)
set_keymap("n", "<leader>q", cmd.q)
set_keymap("n", "<leader>so", cmd.so)
set_keymap("n", "<leader>noh", cmd.noh)
set_keymap("n", "<leader>t", ":10sp term://fish<CR>")

-- Buffers
-- Creation
set_keymap("n", "<leader>vs", cmd.vs)
set_keymap("n", "<leader>sp", cmd.sp)

-- Navigation
set_keymap("n", "<leader>wh", "<C-W><C-H>")
set_keymap("n", "<leader>wj", "<C-W><C-J>")
set_keymap("n", "<leader>wk", "<C-W><C-K>")
set_keymap("n", "<leader>wl", "<C-W><C-L>")

-- Moving windows
set_keymap("n", "wmh", "<C-W><S-H>")
set_keymap("n", "wmj", "<C-W><S-J>")
set_keymap("n", "wmk", "<C-W><S-K>")
set_keymap("n", "wml", "<C-W><S-L>")

-- Terminal
set_keymap("t", "<Esc>", "<C-\\><C-n>")
