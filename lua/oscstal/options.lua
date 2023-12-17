local options = {
	cmdheight = 2,
	fileencoding = "utf-8",
	ignorecase = true,
	mouse = "a",
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	timeoutlen = 1000,
	updatetime = 500,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	number = true,
	relativenumber = true,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8,
    termguicolors = true,
}

for option_name, option_value in pairs(options) do
	vim.opt[option_name] = option_value
end
