return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					n = {
						["d"] = require("telescope.actions").delete_buffer,
						["<esc>"] = require("telescope.actions").close,
					},
					i = {

						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			pickers = {
				oldfiles = {
					disable_devicons = true,
					theme = "dropdown",
				},
				find_files = {
					disable_devicons = true,
					theme = "dropdown",
				},
				live_grep = {
					disable_devicons = true,
					theme = "dropdown",
				},
				grep_string = {
					disable_devicons = true,
					theme = "dropdown",
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<S-h>", function()
			require("telescope.builtin").buffers(require("telescope.themes").get_ivy({
				sort_mru = true,
				sort_lastused = true,
				initial_mode = "normal",
				layout_config = {
					preview_width = 0.4,
				},
			}))
		end, { desc = "[P]Open telescope buffers" })
	end,
}
