return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    --Mason-dap--
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap", },
    config = function()
      require("mason").setup()
      require("mason-nvim-dap").setup({
        ensure_installed = { "python" },
        handlers = {
          function(config)
          require('mason-nvim-dap').default_setup(config)
          end,
          python = function(config)
            config.adapters = {
              type = "executable",
              command = "/usr/bin/python3",
	            args = {
		            "-m",
		            "debugpy.adapter",
	            },
            }
              require('mason-nvim-dap').default_setup(config)
          end,
            },
      })
    end,
  },
  {
    --Mason-tool-installer--
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = ({
          "lua-language-server",
          "vim-language-server",
          "stylua",
          "shellcheck",
        }),
        integrations = {
          ["mason-lspconfig"] = true,
          ["mason-null-ls"] = true,
          ["mason-nvim-dap"] = true,
        },
      })
    end,
  },
}
