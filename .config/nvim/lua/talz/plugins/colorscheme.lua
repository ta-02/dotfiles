return {
	"vague2k/vague.nvim",
	-- "cdmill/neomodern.nvim",
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		-- require("neomodern").setup({
		-- 	style = "roseprime",
		-- 	transparent = transparent,
		-- })
		-- require("neomodern").load()
		require("vague").setup({
			transparent = transparent,
		})
		vim.cmd("colorscheme vague")
		-- require("rose-pine").setup({
		-- 	styles = {
		-- 		bold = false,
		-- 		transparency = transparent,
		-- 	},
		-- })
		-- vim.cmd("colorscheme rose-pine")
	end,
}
