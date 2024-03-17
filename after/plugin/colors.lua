require("catppuccin").setup({
    flavour = "latte",
    integrations = {
        telescope = {
            enabled = true,
        },
        cmp = true,
        nvimtree = true,
    }
})
vim.cmd.colorscheme "catppuccin"
