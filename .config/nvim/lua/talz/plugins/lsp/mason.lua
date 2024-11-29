return {
    "williamboman/mason.nvim",
    dependencies = "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({ ensure_installed = {
            "ts_ls", "html", "cssls", "tailwindcss", "lua_ls", "gopls", "clangd", "rust_analyzer"
        }})
    end,
}
