---General---
vim.cmd("syntax on")--enables syntax higlighting

vim.opt.showtabline = 2--Always enable tab line

vim.opt.wrap = false--Disable line wrapping

vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'--Saves and restores tab layout, useful for tabby.nvim

vim.cmd("set number")--adds line numbers
vim.opt.relativenumber = true--shows line numbers relative to the current line


--highlights the matched text pattern when searching
vim.cmd("set incsearch")
vim.cmd("set nohlsearch")
vim.opt.spelllang = "en_ca"
vim.opt.spell = true

vim.opt.autoindent = true--Copy line indents to new line

vim.opt.conceallevel = 1--For obsidan.nvim

--Terminal Colours--
vim.opt.background = "dark"--forces dark mode for themes


vim.opt.termguicolors = true--forces terminal colours

vim.opt.signcolumn = "yes"--Adds sign column to prevent text from shifting

---Tabbing---
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.clipboard:append("unnamedplus")--Force system clipboard as default

---Mappings---
local key = vim.api.nvim_set_keymap
vim.g.mapleader = " "--maps space to be the "leader" key
key("n", "<Tab>l", ":tabNext<cr>", { noremap = true })
key("n", "<Tab>h", ":tabprevious<cr>", { noremap = true })
key("n", "x", '"_x', { noremap = true })
key("n", "X", '"_X', { noremap = true })
