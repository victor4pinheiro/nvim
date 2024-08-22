require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        telescope = {
            enabled = true,
        },
        cmp = true,
        nvimtree = true,
    }
})
vim.cmd.colorscheme "catppuccin"
