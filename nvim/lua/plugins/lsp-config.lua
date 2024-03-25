return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.svelte.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({})
			lspconfig.astro.setup({})
			lspconfig.eslint.setup({})

			local wk = require("which-key")
			wk.register({
				g = {
					name = "LSP Actions",
				},
			}, { prefix = "<leader>" })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go To References" })
			vim.keymap.set("n", "<leader>gc", vim.lsp.buf.code_action, { desc = "Code Actions" })
		end,
	},
}
