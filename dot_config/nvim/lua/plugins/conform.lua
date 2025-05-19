return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        xml = { "xmlformatter" },
        python = { "isort", "black" },
        c = { "clang-format" },
        --c++ = { "clang-format" },
      },
      format_after_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 1000,
      },
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
