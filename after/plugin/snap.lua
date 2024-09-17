local codesnap = require("codesnap")

local g = vim.g
local keymap = vim.keymap
local cmd = vim.cmd

g.mapleader = " "

--- Function for setting keymaps
local function set_keymap(mode, lhs, rhs, opts)
  keymap.set(mode, lhs, rhs, opts or { silent = true, noremap = true })
end


codesnap.setup({
    watermark = "",
    save_path = "~/Pictures",
    has_line_number = true,
    has_breadcrumbs = true,
    show_workspace = true,
    bg_padding = 0
})

-- Keymaps
set_keymap("n", "<leader>cc", ":CodeSnap<CR>")
