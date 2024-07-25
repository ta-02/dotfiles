return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true
		nvimtree.setup({
			view = {
				side = "right",
				width = 35,
				relativenumber = true,
			},
			diagnostics = {
				enable = true,
			},
			actions = { open_file = { quit_on_open = true } },
			filters = { dotfiles = false, custom = { "^.DS_Store$", "^\\.git$" } },
			git = { enable = true, ignore = false, timeout = 500 },
		})
		local keymap = vim.keymap
		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
	end,
}
