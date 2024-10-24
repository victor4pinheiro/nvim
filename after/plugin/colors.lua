require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        telescope = {
            enabled = true,
        },
    }
})
vim.cmd.colorscheme "catppuccin"
