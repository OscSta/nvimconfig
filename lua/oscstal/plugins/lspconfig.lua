return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "j-hui/fidget.nvim",
                opts = {},
            },
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
    }
}
