function ColorMyPencils()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"blazkowolf/gruber-darker.nvim",
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	lazy = false,
	priority = 1000,
	-- commit = "29c6a52b020959c914a1b22c79c08eb9f6f6b343",
	config = function()
		-- local transparent = true
		-- require("rose-pine").setup({
		-- 	styles = {
		-- 		transparency = transparent,
		-- 		italic = false,
		-- 	},
		-- })
		-- vim.cmd("colorscheme rose-pine")
		require("gruber-darker").setup({
			bold = false,
			invert = {
				signs = false,
				tabline = false,
				visual = false,
			},
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
			undercurl = true,
			underline = true,
		})
		vim.cmd.colorscheme("gruber-darker")
		ColorMyPencils()
	end,
}
