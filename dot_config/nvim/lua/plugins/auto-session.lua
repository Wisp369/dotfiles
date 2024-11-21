return{
  'rmagatti/auto-session',
  lazy = false,

  opts = {
    vim.keymap.set("n", "<leader>sl", ":SessionRestore", {}),
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    auto_restore = false
  },
}
