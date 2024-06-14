return {
	-- "rmehri01/onenord.nvim",
	"slugbyte/lackluster.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- require("onenord").setup({
		-- 	theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
		-- 	borders = true, -- Split window borders
		-- 	fade_nc = false, -- Fade non-current windows, making them more distinguishable
		-- 	-- Style that is applied to various groups: see `highlight-args` for options
		-- 	styles = {
		-- 		comments = "italic",
		-- 		strings = "italic",
		-- 		keywords = "italic",
		-- 		functions = "NONE",
		-- 		variables = "NONE",
		-- 		diagnostics = "underline",
		-- 	},
		-- 	disable = {
		-- 		background = false, -- Disable setting the background color
		-- 		float_background = true, -- Disable setting the background color for floating windows
		-- 		cursorline = false, -- Disable the cursorline
		-- 		eob_lines = true, -- Hide the end-of-buffer lines
		-- 	},
		-- 	-- Inverse highlight for different groups
		-- 	inverse = {
		-- 		match_paren = false,
		-- 	},
		-- 	custom_highlights = {}, -- Overwrite default highlight groups
		-- 	custom_colors = {}, -- Overwrite default colors
		-- })
		-- vim.cmd("colorscheme onenord")
		local lackluster = require("lackluster")
		local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9
		-- setup before set colorscheme
		lackluster.setup({
			-- You can overwrite the following syntax colors by setting them to one of...
			--   1) a hexcode like "#a1b2c3" for a custom color
			--   2) "default" or nil will just use whatever lackluster's default is.
			tweak_syntax = {
				string = "default",
				-- string = "#a1b2c3", -- custom hexcode
				-- string = color.green, -- lackluster color
				string_escape = "default",
				comment = "default",
				builtin = "default", -- builtin modules and functions
				type = "default",
				keyword = "default",
				keyword_return = "default",
				keyword_exception = "default",
			},
			-- You can overwrite the following background colors by setting them to one of...
			--   1) a hexcode like "#a1b2c3" for a custom color
			--   2) "none" for transparency
			--   3) "default" or nil will just use whatever lackluster's default is.
			tweak_background = {
				-- normal = "default", -- main background
				normal = "none", -- transparent
				-- normal = '#a1b2c3',    -- hexcode
				-- normal = color.green,    -- lackluster color
				telescope = "none", -- telescope
				menu = "default", -- nvim_cmp, wildmenu ... (bad idea to transparent)
				popup = "default", -- lazy, mason, whichkey ... (bad idea to transparent)
			},
		})
		vim.cmd.colorscheme("lackluster-hack")
	end,
}
