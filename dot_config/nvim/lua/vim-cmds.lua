---General---
--enables syntax higlighting
vim.cmd("syntax on")

--Always enable tab line
vim.opt.showtabline = 2

--Saves and restores tab layout, useful for tabby.nvim
vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'

--adds line numbers
vim.cmd("set number")
--shows line numbers relative to the current line
vim.opt.relativenumber = true

--highlights the matched text pattern when searching
vim.cmd("set incsearch")
vim.cmd("set nohlsearch")

--Copy line indents to new line
vim.opt.autoindent = true

--Terminal Colours--
--forces dark mode for themes
vim.opt.background = "dark"

--Adds sign column to prevent text from shifting
vim.opt.signcolumn = "yes"

---Tabbing---
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--Force system clipboard as default
vim.opt.clipboard:append("unnamedplus")

---Mappings---
--maps space to be the "leader" key
vim.g.mapleader = " "
