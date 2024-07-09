local keymap = vim.keymap.set

require("neorg").setup({
    load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {
            config = {
                folds = true,
                icon_preset = "diamond",
                init_open_folds = "always"
            }
        },
        ['core.integrations.nvim-cmp'] = {},
        ['core.integrations.treesitter'] = {},
        ['core.completion'] = {
            config = { engine = 'nvim-cmp' }
        },
        ['core.export'] = {},
        ['core.highlights'] = {},
        ['core.autocommands'] = {},
        ['core.keybinds'] = {
            config = {
                default_keybinds = true,
                neorg_leader = "<Leader>",
            },
        },
        ['core.presenter'] = {
            config = {
                zen_mode = "zen-mode",
            }
        }
    }
})

vim.wo.foldlevel = 99
vim.wo.conceallevel = 2

-- Keybindings
