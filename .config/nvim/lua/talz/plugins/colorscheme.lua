return {
	"vague2k/vague.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		require("vague").setup({
			transparent = transparent,
			colors = {
				bg = "#1B1708",
				fg = "#bbbac1",
				floatBorder = "#4a4a4f",
				line = "#1d1d1f",
				comment = "#555555",
				builtin = "#E57E95",
				func = "#ddadb4",
				string = "#D2AF98",
				number = "#F0BEA5",
				property = "#F8BEBE",
				constant = "#F9F9F9",
				parameter = "#DDE1F8",
				visual = "#26262a",
				error = "#BA5F60",
				warning = "#ad9368",
				hint = "#DBBFD3",
				operator = "#9D9AB6",
				keyword = "#779B97",
				type = "#C1DDD7",
			},
		})
		vim.cmd("colorscheme vague")
	end,
}
