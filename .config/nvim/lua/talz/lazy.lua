if not vim.loop.fs_stat(vim.fn.stdpath("data") .. "/lazy/lazy.nvim") then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		vim.fn.stdpath("data") .. "/lazy/lazy.nvim",
	})
end

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup({ { import = "talz.plugins" }, { import = "talz.plugins.lsp" } }, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
