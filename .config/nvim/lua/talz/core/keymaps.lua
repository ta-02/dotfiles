vim.g.mapleader = " "
local keymap = vim.keymap

-- General Keymaps -------------------

---- Auto indent on empty line.
keymap.set("n", "i", function()
	return string.match(vim.api.nvim_get_current_line(), "%g") == nil and "cc" or "i"
end, { expr = true, noremap = true })

-- exit insert
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Save and quit with leader
keymap.set("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>q", ":q<cr>", { noremap = true, silent = true })
keymap.set("v", "<leader>w", ":w<cr>", { noremap = true, silent = true })
keymap.set("v", "<leader>q", ":q<cr>", { noremap = true, silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- rezise windows
keymap.set("n", "<leader>+", "<Cmd>vertical resize +5<CR>", { desc = "Resize window +5" })
keymap.set("n", "<leader>-", "<Cmd>vertical resize -5<CR>", { desc = "Resize window -5" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
