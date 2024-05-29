return {
	"comfysage/evergarden",
	lazy = false,
	priority = 1000,
	config = function()
		require("evergarden").setup({
			transparent_background = true,
			contrast_dark = "medium", -- 'hard'|'medium'|'soft'
			override_terminal = true,
			style = {
				tabline = { reverse = true, color = "green" },
				search = { reverse = false, inc_reverse = true },
				types = { italic = true },
				keyword = { italic = true },
				comment = { italic = true },
			},
			overrides = {}, -- add custom overrides
		})
		vim.cmd("colorscheme evergarden")
	end,
}
