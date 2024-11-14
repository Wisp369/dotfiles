return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "jdtls", "basedpyright" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.basedpyright.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.jdtls.setup({})

      --Keymappings--
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    end
  }
}
