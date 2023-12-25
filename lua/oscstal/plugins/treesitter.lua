return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = "<Cmd>TSUpdate",
        event = "VeryLazy",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        config = function()
            local tc = require("nvim-treesitter.configs")
            tc.setup({
                ensure_installed = {
                    "lua",
                    "rust",
                    "toml",
                    "vim",
                },
                auto_install = true,
                ignore_install = {},
                textobjects = {
                    enable = true,
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true, },
            })
        end,
    },
}
