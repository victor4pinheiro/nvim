require("catppuccin").setup({
    flavour = "latte",
    integrations = {
        telescope = {
            enabled = true,
        },
    }
})
vim.cmd.colorscheme "catppuccin"
