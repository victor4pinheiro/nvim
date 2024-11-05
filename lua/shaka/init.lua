-- Lazy-load Shaka modules
require("shaka.remap")
require("shaka.lazy")

-- General configurations optimized for performance
local opt = vim.opt

opt.guicursor = ""          -- Hide cursor for speed
opt.nu = true               -- Show line numbers
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false        -- Disable swap files
opt.backup = false          -- Disable backup files
opt.hlsearch = false        -- Disable persistent search highlighting
opt.incsearch = true
opt.termguicolors = true    -- Enable true colors
opt.scrolloff = 8
opt.signcolumn = "no"       -- Hide sign column
opt.foldcolumn = "0"        -- Hide fold column
opt.lazyredraw = true       -- Delay redraws for performance
opt.updatetime = 200        -- Further reduce update time
opt.colorcolumn = "80"
opt.clipboard = 'unnamedplus'
opt.hidden = true           -- Allow switching buffers without saving
opt.bufhidden = "wipe"      -- Unload buffers automatically

-- Additional optimizations
opt.shortmess:append("c")   -- Shorten messages for speed
