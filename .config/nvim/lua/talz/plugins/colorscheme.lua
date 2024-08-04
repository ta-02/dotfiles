return {
	-- "vague2k/vague.nvim",
	"cdmill/neomodern.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		require("neomodern").setup({
			style = "roseprime",
			transparent = transparent,
		})
		require("neomodern").load()
		-- require("vague").setup({
		-- 	transparent = transparent,
		-- })
		-- vim.cmd("colorscheme vague")
	end,
}
