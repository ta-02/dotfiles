return {
	-- "olivercederborg/poimandres.nvim",
	"vague2k/vague.nvim",
	-- "cdmill/neomodern.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		-- require("neomodern").setup({
		-- 	style = "roseprime",
		-- 	transparent = transparent,
		-- })
		-- require("poimandres").setup({
		-- 	disable_background = transparent,
		-- 	disable_float_background = transparent,
		-- 	disable_italics = true,
		-- })
		require("vague").setup({
			transparent = transparent,
		})
		-- require("neomodern").load()
		-- vim.cmd("colorscheme poimandres")
		vim.cmd("colorscheme vague")
	end,
}
