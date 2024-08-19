return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		require("rose-pine").setup({
			groups = {
				border = "#333333",
				link = "#333333",
				panel = "#333333",
			},
			styles = {
				transparency = transparent,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
