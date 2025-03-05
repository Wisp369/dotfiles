---Mappings---
vim.g.mapleader = " "--maps space to be the "leader" key. Should be done BEFORE you load lazy
local key = vim.api.nvim_set_keymap
key("n", "<Tab>l", ":tabNext<cr>", { noremap = true })
key("n", "<Tab>h", ":tabprevious<cr>", { noremap = true })
key("n", "x", '"_x', { noremap = true })
key("n", "X", '"_X', { noremap = true })
