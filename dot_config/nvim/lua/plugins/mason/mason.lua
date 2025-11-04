return {
    "williamboman/mason-lspconfig.nvim",
  opts = {
    "lua_ls",
  },
    dependencies = {
    {
    "mason-org/mason.nvim",
    opts = {
        ui = {
          icons = {
            package_installed = "󰄬",
            package_pending = "",
            package_uninstalled = ""
          },
        },
      },
    },
    "neovim/nvim-lspconfig"
  },
}
