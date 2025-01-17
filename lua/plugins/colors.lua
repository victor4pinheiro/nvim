return {
	{
		"catppuccin/nvim",
		name = "catppuccin", -- Important: Use the name option
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
			})
			vim.cmd([[colorscheme catppuccin]]) -- Set the colorscheme
		end,
	},
}
