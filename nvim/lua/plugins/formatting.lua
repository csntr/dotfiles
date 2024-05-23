return {
	{ "tpope/vim-sleuth" },
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters = {
					prettier = {
						require_cwd = true,
						cwd = require("conform.util").root_file({
							".prettierrc",
							".prettierrc.json",
							".prettierrc.yml",
							".prettierrc.yaml",
							".prettierrc.json5",
							".prettierrc.js",
							".prettierrc.cjs",
							".prettierrc.mjs",
							".prettierrc.toml",
							"prettier.config.js",
							"prettier.config.cjs",
							"prettier.config.mjs",
						}),
					},
				},
				formatters_by_ft = {
					-- javascript = { "prettier" },
					-- typescript = { "prettier" },
					svelte = { "prettier" },
					css = { "prettier" },
					-- html = { "prettier" },
					json = { "prettier" },
					yaml = { "prettier" },
					markdown = { "prettier" },
					graphql = { "prettier" },
					liquid = { "prettier" },
					lua = { "stylua" },
					-- vue = { "prettier" },
				},
			})
		end,
	},
}
