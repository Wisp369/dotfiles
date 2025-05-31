return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = ({
        "lua-language-server",
        "black",
        "stylua",
        "basedpyright",
        "xmlformatter",
        "pylint",
        "isort",
        "lemminx",
        "codelldb",
        "debugpy",
        "clangd",
        "clang-format",
        "asm-lsp",
        "asmfmt",
        "omnisharp",
        "csharpier",
        "netcoredbg",
        "cpplint",
        "ast-grep",
      }),
      integrations = {
        ["mason-lspconfig"] = true,
        ["mason-nvim-dap"] = true,
        ['mason-null-ls'] = false,
      },
    })
  end,
}
