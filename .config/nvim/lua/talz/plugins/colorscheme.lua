return {
	-- "slugbyte/lackluster.nvim",
	-- "olivercederborg/poimandres.nvim",
	"rose-pine/neovim",
	-- "folke/tokyonight.nvim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		-- vim.cmd.colorscheme("tokyonight")
		-- local lackluster = require("lackluster")
		-- local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9
		-- -- setup before set colorscheme
		-- lackluster.setup({
		-- 	-- You can overwrite the following syntax colors by setting them to one of...
		-- 	--   1) a hexcode like "#a1b2c3" for a custom color
		-- 	--   2) "default" or nil will just use whatever lackluster's default is.
		-- 	tweak_syntax = {
		-- 		string = "default",
		-- 		-- string = "#a1b2c3", -- custom hexcode
		-- 		-- string = color.green, -- lackluster color
		-- 		string_escape = "default",
		-- 		comment = "default",
		-- 		builtin = "default", -- builtin modules and functions
		-- 		type = "default",
		-- 		keyword = "default",
		-- 		keyword_return = "default",
		-- 		keyword_exception = "default",
		-- 	},
		-- 	-- You can overwrite the following background colors by setting them to one of...
		-- 	--   1) a hexcode like "#a1b2c3" for a custom color
		-- 	--   2) "none" for transparency
		-- 	--   3) "default" or nil will just use whatever lackluster's default is.
		-- 	tweak_background = {
		-- 		normal = "default", -- main background
		-- 		-- normal = "none", -- transparent
		-- 		-- normal = '#a1b2c3',    -- hexcode
		-- 		-- normal = color.green,    -- lackluster color
		-- 		telescope = "default", -- telescope
		-- 		menu = "default", -- nvim_cmp, wildmenu ... (bad idea to transparent)
		-- 		popup = "default", -- lazy, mason, whichkey ... (bad idea to transparent)
		-- 	},
		-- })
		-- vim.cmd.colorscheme("lackluster")
		require("rose-pine").setup({
			variant = "auto", -- auto, main, moon, or dawn
			dark_variant = "main", -- main, moon, or dawn
			dim_inactive_windows = false,
			extend_background_behind_borders = true,

			enable = {
				terminal = true,
				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				migrations = true, -- Handle deprecated options automatically
			},

			styles = {
				bold = false,
				italic = false,
				transparency = true,
			},

			groups = {
				border = "muted",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = "iris",
				h2 = "foam",
				h3 = "rose",
				h4 = "gold",
				h5 = "pine",
				h6 = "foam",
			},

			highlight_groups = {
				-- Comment = { fg = "foam" },
				-- VertSplit = { fg = "muted", bg = "muted" },
			},

			before_highlight = function(group, highlight, palette)
				-- Disable all undercurls
				-- if highlight.undercurl then
				--     highlight.undercurl = false
				-- end
				--
				-- Change palette colour
				-- if highlight.fg == palette.pine then
				--     highlight.fg = palette.foam
				-- end
			end,
		})

		vim.cmd("colorscheme rose-pine")
		-- vim.cmd("colorscheme rose-pine-main")
		-- vim.cmd("colorscheme rose-pine-moon")
		-- vim.cmd("colorscheme rose-pine-dawn")
		-- require("poimandres").setup({
		-- 	bold_vert_split = false, -- use bold vertical separators
		-- 	dim_nc_background = false, -- dim 'non-current' window backgrounds
		-- 	disable_background = true, -- disable background
		-- 	disable_float_background = true, -- disable background for floats
		-- 	disable_italics = true, -- disable italics
		-- })
		-- vim.cmd("colorscheme poimandres")
	end,
}
