return {
  "mason-org/mason.nvim",
  "mason-org/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "basedpyright", "csharp_ls", "lemminx", "clangd", },
    }
  end
}
