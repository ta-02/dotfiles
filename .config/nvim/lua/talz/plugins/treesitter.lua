return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
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
            sync_install = false,
            highlight = {enable = true},
            indent = {enable = true},
        })
    end,
}
