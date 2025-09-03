return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
    { "antosha417/nvim-lsp-file-operations", config = true }
  },

  --- Auto LSP Server setup ---
  -- Declare servers --
  opts = {
    servers = {
      lua_ls = {},
      basedpyright = {},
      clangd = {},
      asm_lsp = {},
      bashls = {},
      kotlin_language_server = {},
    }
  },
  -- Setup servers --
  config = function(_, opts)
    local lspconfig = require("lspconfig")
    for server, config in pairs(opts.servers) do
      config.capabilities = require("blink.cmp").get_lsp_capabilities()
      lspconfig[server].setup(config)
    end

    --- Manual LSP Configs ---
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    -- Omnisharp (C#) --
    local pid = vim.fn.getpid()

    lspconfig["omnisharp"].setup({
      cmd = { vim.fn.exepath("OmniSharp"), "--languageserver", "--hostPID", tostring(pid) },
      capabilities = capabilities,
    })
    --Sourcekit lsp (Swift)--
    lspconfig["sourcekit"].setup({
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        },
      },
      on_attach = on_attach,
      cmd = lsp == "sourcekit" and { vim.trim(vim.fn.system("xcrun -f sourcekit-lsp")) } or nil,
    })
    --Keymappings--
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  end
}
