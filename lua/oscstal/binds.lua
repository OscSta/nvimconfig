local opts = { noremap = true, silent = true }
local set_keymap = vim.api.nvim_set_keymap

-- General binds
set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nvim-Tree
set_keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", opts)

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function()
        set_keymap("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        set_keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        set_keymap("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        set_keymap("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        set_keymap("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
        set_keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        set_keymap("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
        set_keymap("n", "<leader>rr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", opts)
        set_keymap("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", opts)
        set_keymap("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        set_keymap("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        set_keymap("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        set_keymap("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        set_keymap("n", "<leader>tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", opts)
        set_keymap("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", opts)
    end
})
