return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
    },
    config = function()
        require("cmp").setup({
            completion = {completeopt = "menu,menuone,preview,noselect"},
            mapping = require("cmp").mapping.preset.insert({
                ["<C-k>"] = require("cmp").mapping.select_prev_item(),
                ["<C-j>"] = require("cmp").mapping.select_next_item(),
                ["<C-Space>"] = require("cmp").mapping.complete(),
                ["<C-e>"] = require("cmp").mapping.abort(),
                ["<CR>"] = require("cmp").mapping.confirm({select = false}),
            }),
            sources = require("cmp").config.sources({
                {name = "nvim_lsp"},
                {name = "buffer"},
                {name = "path"},
            }),
        })
    end,
}
