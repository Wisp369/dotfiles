return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = {
      enabled = true,
      replace_netrw = true,
    },
    indent = { enabled = true },
    input = { enabled = true },
    scroll = { enabled = true },
    notifier = {
      enabled = true,
      level = vim.log.levels.TRACE,
      icons = {
        error = " ",
        warn = " ",
        info = " ",
        debug = " ",
        trace = " ",
      },
      keep = function(notif)
        return vim.fn.getcmdpos() > 0
      end,
    },
    git = { enabled = true },
    gitbrowse = {
      enabled = true,
      notify = true,
    },
  },
  keys = {
    --Explorer--
    {
      "<C-e>",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
  },
}
