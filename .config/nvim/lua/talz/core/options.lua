local opt = vim.opt

opt.relativenumber = true
opt.nu = true

opt.softtabstop = 2
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true
opt.autoindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false

opt.isfname:append("@-@")
opt.scrolloff = 8
-- opt.colorcolumn = "80"
opt.conceallevel = 2
