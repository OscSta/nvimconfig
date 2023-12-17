require "oscstal/options"
require "oscstal/binds"

-- Lazy Package Manager
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazy_path,
	})
end
vim.opt.rtp:prepend(lazy_path)

-- Lazy Package Manager
require("lazy").setup({
	"navarasu/onedark.nvim"
})

-- Color Theme
require("onedark").setup {
	style = "cool"
}
require("onedark").load()
