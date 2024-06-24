return {
	"HiPhish/rainbow-delimiters.nvim",
	config = function()
		require("rainbow-delimiters.setup").setup({
			strategy = {
				[""] = require("rainbow-delimiters.strategy.global"),
				commonlisp = require("rainbow-delimiters.strategy.local"),
			},
			query = {
				[""] = "rainbow-delimiters",
				latex = "rainbow-blocks",
				javascript = "rainbow-parens",
				tsx = "rainbow-parens",
				typescript = "rainbow-parens",
			},
			highlight = {
				"RainbowDelimiterYellow",
				"RainbowDelimiterViolet",
				"RainbowDelimiterBlue",
			},
			blacklist = { "c", "cpp" },
		})
		vim.cmd([[
            highlight RainbowDelimiterYellow guifg=#FFD701
            highlight RainbowDelimiterViolet guifg=#DA70D6
            highlight RainbowDelimiterBlue guifg=#169FFF
        ]])
	end,
}
