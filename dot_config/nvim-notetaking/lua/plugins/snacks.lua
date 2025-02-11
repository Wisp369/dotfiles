return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
    opts = {
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      scroll = { enabled = true },
    },
    keys = {
    --Explorer--
    { "<C-e>", function() Snacks.explorer() end, desc = "File Explorer"}
  }
}
