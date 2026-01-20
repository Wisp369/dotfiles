---Mappings---
vim.g.mapleader = " " --maps space to be the "leader" key. Should be done BEFORE you load lazy
--local key = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local opts = {
  noremap = true,
  silent = true,
}

keymap("n", "<Tab>l", ":tabnext<cr>", opts)
keymap("n", "<Tab>h", ":tabprevious<cr>", opts)
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
keymap("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true })

--- Autosession ---
vim.keymap.set("n", "<leader>sl", ":AutoSession restore<CR>", {})
