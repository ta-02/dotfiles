return {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruber-darker").setup({
            bold = true,
            invert = {
                signs = false,
                tabline = false,
                visual = false,
            },
            italic = {
                strings = false,
                comments = false,
                operators = false,
                folds = false,
            },
            undercurl = false,
            underline = false,
        })
        vim.cmd.colorscheme("gruber-darker")
    end,
}
