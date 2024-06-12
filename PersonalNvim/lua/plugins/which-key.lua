return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		plugins = { spelling = true },
		icons = {
			breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
			separator = "", -- symbol used between a key and it's label
			group = "󰄷 ", -- symbol prepended to a group
		},
		window = {
			margin = { 1, 0, 2, 0 },
			padding = { 2, 2, 2, 2 },
		},
		layout = {
			align = "center",
			spacing = 6,
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register({ h = { name = "Hunk Actions", ["1"] = "which_key_ignore" } }, { prefix = "<leader>" })
	end,
}
