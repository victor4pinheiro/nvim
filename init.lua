-- Imports
require("remap")

-- Global variables
local opt = vim.opt

--- General config
-- Cursor
opt.guicursor = ""

-- Show number
opt.nu = true

-- Tabs
--- Use space as tab
opt.expandtab = true
--- Default tab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Indentation
-- This help when you break a line, it keeps the indentation
opt.smartindent = true

-- Visual
--- Set to use 256 colors
vim.opt.termguicolors = true
--- Use NerdFont compatibility mode
vim.g.have_nerd_font = true

-- Show mode
opt.showmode = true

-- Search: When search it highlights if the word matches any
opt.incsearch = true

-- Clipboard - Always set true
opt.clipboard = 'unnamedplus'

-- Use symbols to indicate spaces
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
