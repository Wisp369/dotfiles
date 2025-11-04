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
        "cssls",
        "debugpy",
        "clangd",
        "clang-format",
        "omnisharp",
        "csharpier",
        "netcoredbg",
        "cpplint",
        "prettier",
        "deno",
        "oxlint",
        "kotlin-language-server",
        "stylelint",
        "htmlhint",
      }),
      integrations = {
        ["mason-lspconfig"] = true,
        ["mason-nvim-dap"] = true,
        ['mason-null-ls'] = false,
      },
    })
  end,
}
