return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    },
    config = function()
        require("telescope").setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    n = {
                        ["d"] = require("telescope.actions").delete_buffer,
                        ["q"] = require("telescope.actions").close,
                    },
                    i = {
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-q>"] = require("telescope.actions").send_selected_to_qflist
                            + require("telescope.actions").open_qflist,
                    },
                },
            },
            pickers = {
                oldfiles = {disable_devicons = true, theme = "dropdown"},
                find_files = {disable_devicons = true, theme = "dropdown"},
                live_grep = {disable_devicons = true, theme = "dropdown"},
                grep_string = {disable_devicons = true, theme = "dropdown"},
            },
        })
        require("telescope").load_extension("fzf")
        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
        vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
        vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
        vim.keymap.set("n", "<leader>k", function()
            require("telescope.builtin").buffers(require("telescope.themes").get_ivy({
                sort_mru = true,
                disable_devicons = true,
                sort_lastused = true,
                initial_mode = "normal",
                layout_config = { preview_width = 0.4 },
            }))
        end)
    end,
}
