function ColorMyPencils(color)
	color = color or "zenburn"
	vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
    -- "blazkowolf/gruber-darker.nvim",
    "phha/zenburn.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- require("gruber-darker").setup({
        --     bold = true,
        --     invert = {
        --         signs = false,
        --         tabline = false,
        --         visual = false,
        --     },
        --     italic = {
        --         strings = false,
        --         comments = false,
        --         operators = false,
        --         folds = false,
        --     },
        --     undercurl = false,
        --     underline = false,
        -- })
        -- vim.cmd.colorscheme("gruber-darker")
        ColorMyPencils()
    end,
}
