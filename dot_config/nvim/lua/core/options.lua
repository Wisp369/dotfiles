---General---
vim.cmd("syntax on") --enables syntax higlighting

vim.opt.showtabline = 2 --Always enable tab line

vim.opt.wrap = false --Disable line wrapping

vim.opt.swapfile = false --Disable swap file

-- Disable auto commenting
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
	desc = "Disable New Line Comment",
})

vim.opt.sessionoptions = "curdir,folds,globals,help,tabpages,terminal,winsize" --Saves and restores tab layout, useful for tabby.nvim

vim.cmd("set number") --adds line numbers
vim.opt.relativenumber = true --shows line numbers relative to the current line

vim.opt.completeopt = { "menu", "menuone", "noselect" } -- For nvim-cmp

--highlights the matched text pattern when searching
vim.cmd("set incsearch")
vim.cmd("set nohlsearch")
vim.opt.spelllang = "en_ca"
vim.opt.spell = true

vim.opt.autoindent = true --Copy line indents to new line

vim.opt.conceallevel = 1 --For obsidan.nvim

--Terminal Colours--
vim.opt.background = "dark" --forces dark mode for themes

vim.opt.termguicolors = true --forces terminal colours

vim.opt.signcolumn = "yes" --Adds sign column to prevent text from shifting

---Tabbing---
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.clipboard:append("unnamedplus") --Force system clipboard as default

--- UFO Options ---
vim.opt.foldcolumn = "1" -- '0' is not bad
vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
