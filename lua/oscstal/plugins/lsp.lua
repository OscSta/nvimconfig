return {
    {
        "neovim/nvim-lspconfig",
        main = "lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
    },
    {
        "williamboman/mason.nvim",
        main = "mason",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        main = "mason-lspconfig",
        opts = {},
        config = function(_, opts)
            local mason_lspconfig = require("mason-lspconfig")
            mason_lspconfig.setup(opts)
            mason_lspconfig.setup_handlers({
                -- Default LSP server setup
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                -- Lua LSP setup
               ["lua_ls"] = function()
                   local lspconfig = require("lspconfig")
                   lspconfig.lua_ls.setup {
                       settings = {
                           Lua = {
                               diagnostics = {
                                   globals = { "vim" }
                               }
                           }
                       }
                   }
               end,
            })
        end,
    },
}
