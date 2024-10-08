return {
	"akinsho/bufferline.nvim",
	version = "*",
	opts = {},
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				style_preset = {
					bufferline.style_preset.no_italic,
					bufferline.style_preset.no_bold,
				},
				mode = "buffers",
				separator_style = { " ", "" },
				indicator = {
					icon = "",
					style = "none",
				},
				show_buffer_icons = false,
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		})
	end,
}
