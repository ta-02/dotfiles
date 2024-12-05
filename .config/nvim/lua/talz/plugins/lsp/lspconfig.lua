return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {"antosha417/nvim-lsp-file-operations", config = true},
        {"folke/lazydev.nvim", config = true},
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", {
                    buffer = ev.buf, silent = true, desc = "Show LSP references"
                })
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
                    buffer = ev.buf, silent = true, desc = "Go to declaration"
                })
                vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", {
                    buffer = ev.buf, silent = true, desc = "Show LSP definitions"
                })
                vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", {
                    buffer = ev.buf, silent = true, desc = "Show LSP implementations"
                })
                vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", {
                    buffer = ev.buf, silent = true, desc = "Show LSP type definitions"
                })
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
                    buffer = ev.buf, silent = true, desc = "See available code actions"
                })
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
                    buffer = ev.buf, silent = true, desc = "Smart rename"
                })
                vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", {
                    buffer = ev.buf, silent = true, desc = "Show buffer diagnostics"
                })
                vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
                    buffer = ev.buf, silent = true, desc = "Show line diagnostics"
                })
                vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
                    buffer = ev.buf, silent = true, desc = "Go to previous diagnostic"
                })
                vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
                    buffer = ev.buf, silent = true, desc = "Go to next diagnostic"
                })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                    buffer = ev.buf, silent = true, desc = "Show documentation for what is under cursor"
                })
                vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", {
                    buffer = ev.buf, silent = true, desc = "Restart LSP"
                })
            end,
        })
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                })
            end,
        })
    end,
}
