return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = ({
        "lua-language-server",
        "black",
        "stylua",
        "basedpyright",
        "pylint",
        "codelldb",
        "html",
        "debugpy",
        "clangd",
        "clang-format",
        "omnisharp",
        "csharpier",
        "netcoredbg",
        "cpplint",
        "prettier",
        "typescript-language-server",
        "oxlint",
        "kotlin-language-server",
        "htmlhint",
        "jdtls",
        "checkstyle",
        "jdtls",
      }),
      integrations = {
        ["mason-lspconfig"] = true,
        ["mason-nvim-dap"] = true,
        ['mason-null-ls'] = false,
      },
    })
  end,
}
