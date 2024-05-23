return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	formain = "ibl",
	opts = {
		indent = { char = "┊" },
	},
}
