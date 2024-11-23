return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		vim.o.timeout = true
		require("which-key").setup({
			icons = {
				mappings = false,
			},
		})
		vim.o.timeoutlen = 500
	end,
}
