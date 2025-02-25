return {
	{
		"catppuccin/nvim",
		name = "catppuccin", -- Important: Use the name option
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})
			vim.cmd([[colorscheme catppuccin]]) -- Set the colorscheme
		end,
	},
}
