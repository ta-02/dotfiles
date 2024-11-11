return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		require("which-key").setup({
			icons = {
				mappings = false,
			},
		})
		vim.o.timeoutlen = 500
	end,
}
