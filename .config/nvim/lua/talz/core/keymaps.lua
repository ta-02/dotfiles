vim.g.mapleader = " "
local keymap = vim.keymap

---- Auto indent on empty line.
keymap.set("n", "i", function()
	return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })

-- exit insert
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Save and quit with leader
keymap.set("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>cc", ":xa<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>q", ":bdelete<cr>", { noremap = true, silent = true })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- swtich between buffers
keymap.set("n", "L", ":bnext<CR>", { noremap = true, silent = true, desc = "Go to next buffer" })
keymap.set("n", "H", ":bprevious<CR>", { noremap = true, silent = true, desc = "Go to previous buffer" })

-- rezise windows
keymap.set("n", "<leader>+", "<Cmd>vertical resize +5<CR>", { desc = "Resize window +5" })
keymap.set("n", "<leader>-", "<Cmd>vertical resize -5<CR>", { desc = "Resize window -5" })
