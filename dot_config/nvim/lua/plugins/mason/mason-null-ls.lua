return {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("null-ls")
      require("mason").setup()
      require("mason-null-ls").setup({
        ensure_installed = { "stylua", "jq" },
          automatic_installation = false --TODO: Change this
      })
    end
  }
