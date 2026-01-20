return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        python = { "isort", "black" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        kotlin = { "ktlint" },
        csharp = { "csharpier" },
        swift = { "swiftformat" },
        html = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
        java = { "clang-format" },
      },
      format_after_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 1000,
      },
      log_level = vim.log.levels.INFO,
    })
    vim.keymap.set({ "n", "v" }, "<leader>fc", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file" })
  end
}
