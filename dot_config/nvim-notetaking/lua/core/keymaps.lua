---Mappings---
vim.g.mapleader = " " --maps space to be the "leader" key. Should be done BEFORE you load lazy
local map = vim.api.nvim_set_keymap
map("n", "<Tab>l", ":tabnext<cr>", { noremap = true })
map("n", "<Tab>h", ":tabprevious<cr>", { noremap = true })
map("n", "x", '"_x', { noremap = true })
map("n", "X", '"_X', { noremap = true })

--- Obsidian.nvim ---
map("n", "<leader>v", ":ObsidianPasteImg<CR>", { noremap = true })
map("n", "<leader>T", ":ObsidianTemplate<CR>", { noremap = true })


--- Autosession ---
vim.keymap.set("n", "<leader>sl", ":AutoSession restore<CR>", {})
