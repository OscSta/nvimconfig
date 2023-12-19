return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        enabled = true,
        ensure_installed = {
            "lua",
            "rust",
            "toml",
        },
        auto_install = true,
        highlight = {
            enable = true,
        },
        ident = { enable = true },
        rainbow = {
            enable = true,
            extended_mode = true,
        },
    }
}
