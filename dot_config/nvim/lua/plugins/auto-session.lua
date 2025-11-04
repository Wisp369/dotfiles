return{
  'rmagatti/auto-session',
  lazy = false,

  opts = {
    vim.keymap.set("n", "<leader>sl", ":AutoSession restore<CR>", {}),
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    auto_restore = false
  },
}
