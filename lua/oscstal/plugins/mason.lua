return {
    { 
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local lsp_zero = require("lsp-zero")
            require("mason-lspconfig").setup({
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        settings = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    end
                },
            })
        end,
    },
}
