-- Lazy-load Shaka modules
require("shaka.remap")
require("shaka.lazy")

-- General configs optimized for performance

vim.opt.guicursor = ""       -- Invisible cursor for speed
vim.opt.nu = true            -- Show line numbers
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false     -- Disable swap files
vim.opt.backup = false      -- Disable backup files
vim.opt.hlsearch = false    -- Disable persistent search highlighting
vim.opt.incsearch = true
vim.opt.termguicolors = true   -- Disable true colors if not essential
vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"   -- Hide sign column
vim.opt.foldcolumn = "0"    -- Hide fold column
vim.opt.lazyredraw = true   -- Delay redraws
vim.opt.updatetime = 300    -- Decrease update time
vim.opt.colorcolumn = "80"
vim.o.clipboard = 'unnamedplus'
vim.opt.hidden = true       -- Allow switching buffers without saving
vim.opt.bufhidden = "wipe"   -- Automatically unload abandoned buffers
