return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "school",
					path = "~/vaults/year_3/",
				},
			},
		})
		vim.keymap.set(
			"n",
			"<leader>oc",
			"<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
			{ noremap = true, silent = true, desc = "Obsidian Check Checkbox" }
		)
		vim.keymap.set(
			"n",
			"<leader>oo",
			"<cmd>ObsidianOpen<CR>",
			{ noremap = true, silent = true, desc = "Open in Obsidian App" }
		)
		vim.keymap.set(
			"n",
			"<leader>ob",
			"<cmd>ObsidianBacklinks<CR>",
			{ noremap = true, silent = true, desc = "Show Obsidian Backlinks" }
		)
		vim.keymap.set(
			"n",
			"<leader>ol",
			"<cmd>ObsidianLinks<CR>",
			{ noremap = true, silent = true, desc = "Show Obsidian Links" }
		)
		vim.keymap.set(
			"n",
			"<leader>os",
			"<cmd>ObsidianSearch<CR>",
			{ noremap = true, silent = true, desc = "Search Obsidian" }
		)
		vim.keymap.set(
			"n",
			"<leader>oq",
			"<cmd>ObsidianQuickSwitch<CR>",
			{ noremap = true, silent = true, desc = "Quick Switch" }
		)
	end,
}
