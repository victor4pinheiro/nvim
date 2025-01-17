return {
	{
		"ibhagwan/fzf-lua",
		-- Optional: Only load fzf-lua when needed (lazy loading)
		-- event = "VeryLazy", -- Or other events like "BufRead", "FileType", etc.
		config = function()
			local fzf_lua = require("fzf-lua")

			fzf_lua.setup({
				fzf_opts = { ["--cycle"] = true },
				files = {
					cmd = "fd",
				},
			})

			local utils = require("utils") -- Assuming you have your utils module

			-- Set keymaps using your utility function
			utils.set_keymap("n", "<leader>?", fzf_lua.oldfiles)
			utils.set_keymap("n", "<leader>sb", fzf_lua.buffers)
			utils.set_keymap("n", "<leader>s/", fzf_lua.lgrep_curbuf)
			utils.set_keymap("n", "<leader>ss", fzf_lua.builtin)
			utils.set_keymap("n", "<leader>sf", fzf_lua.files)
			utils.set_keymap("n", "<leader>gf", fzf_lua.git_files)
			utils.set_keymap("n", "<leader>sh", fzf_lua.helptags)
			utils.set_keymap("n", "<leader>sw", fzf_lua.grep)
			utils.set_keymap("n", "<leader>sg", fzf_lua.live_grep_native)
			utils.set_keymap("n", "<leader>sk", fzf_lua.keymaps)
			utils.set_keymap("n", "<leader>sd", fzf_lua.diagnostics_workspace)
			utils.set_keymap("n", "<leader>sr", fzf_lua.resume)
		end,
	},
}
