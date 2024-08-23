return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	commit = "29c6a52b020959c914a1b22c79c08eb9f6f6b343",
	config = function()
		local transparent = true
		require("rose-pine").setup({
			styles = {
				transparency = transparent,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
