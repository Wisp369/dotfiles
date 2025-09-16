return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "pylint" },
      c = { "cpplint" },
      cpp = { "cpplint" },
      swift = { "swiftlint" },
      html = { "htmlhint" },
      css = { "stylelint" },
      javascript = { "eslint" },
      kotlin = { "ktlint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>fl", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })

    -- Configure pylint
    require('lint').linters.pylint.cmd = vim.fn.exepath("pylint")
    require('lint').linters.pylint.args = { '--disable=C0103,C0304,C0114,E0401', '-f', 'json', vim.api.nvim_buf_get_name(0) }
  end,
}
