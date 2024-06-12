return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local wk = require("which-key")

		wk.register({ s = { name = "Search" } }, { prefix = "<leader>" })

		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search by Grep" })
		vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search Buffers" })
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help" })
		vim.keymap.set("n", "<leader>st", builtin.treesitter, { desc = "Search Treesitter" })
	end,
}
