local opts = { noremap = true, silent = true }
local km = vim.api.nvim_set_keymap

-- General binds
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
