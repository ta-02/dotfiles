vim.g.mapleader = " "

vim.keymap.set("n", "i", function()
	return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bdelete<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Q", ":xa<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>+", "<Cmd>vertical resize +5<CR>", { desc = "Resize window +5" })
vim.keymap.set("n", "<leader>-", "<Cmd>vertical resize -5<CR>", { desc = "Resize window -5" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move line up" })
