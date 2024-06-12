return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "▍" },
			change = { text = "▍" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▍" },
			untracked = { text = "▍" },
		},
		on_attach = function(buffer)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
			end

			map("n", "<leader>hs", gs.stage_hunk, "Stage Hunk")
			map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
			map("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage Hunk")
			map("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset Hunk")
			map("n", "<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
			map("n", "<leader>hp", gs.preview_hunk_inline, "Preview Hunk Inline")
			map("n", "<leader>tb", gs.toggle_current_line_blame, "Toggle Line Blame")
			map("n", "<leader>hd", gs.diffthis, "Diff This")
			map("n", "<leader>hD", function()
				gs.diffthis("~")
			end, "Diff This ~")

			map("n", "]h", gs.next_hunk, "Next Hunk")
			map("n", "[h", gs.prev_hunk, "Prev Hunk")
		end,
	},
}
