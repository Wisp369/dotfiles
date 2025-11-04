---Mappings---
vim.g.mapleader = " " --maps space to be the "leader" key. Should be done BEFORE you load lazy
--local key = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}

keymap("n", "<Tab>l", ":tabNext<cr>", opts)
keymap("n", "<Tab>h", ":tabprevious<cr>", opts)
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
