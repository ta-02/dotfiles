return {
	"nvim-treesitter/nvim-treesitter",
	event = {"BufReadPre", "BufNewFile"},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
			indent = {enable = true},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"vimdoc",
				"go",
				"python",
				"c",
                "cpp",
				"rust",
			},
		})
	end,
}
