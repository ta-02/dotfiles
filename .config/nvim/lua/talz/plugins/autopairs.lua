return {
    "windwp/nvim-autopairs",
    dependencies = {"windwp/nvim-ts-autotag", config = true},
    event = "InsertEnter",
    opts = {check_ts = true}
}
