-- Combine path construction and stat check for efficiency:
if not vim.loop.fs_stat(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") then
    -- Use a single shell command for git clone and checkout:
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "-b", "stable", -- Concise branch specification
        "https://github.com/folke/lazy.nvim.git",
        vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    })
end

-- Directly modify runtimepath for efficiency:
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

-- Opts
local opts = {
    real_cputime = true,
}

local plugins = {
    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build =
                'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
                cond = function()
                    return vim.fn.executable 'cmake' == 1
                end,
            },
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },
    {
        -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            { 'williamboman/mason.nvim', config = true },
            'williamboman/mason-lspconfig.nvim',
        },
    },
    {
        'saghen/blink.cmp',
        lazy = false,
        dependencies = {
            'rafamadriz/friendly-snippets',
        },
        build = 'cargo build --release'
    },
}

-- Require lazy.nvim only once for lazy loading:
require("lazy").setup(plugins, opts)
