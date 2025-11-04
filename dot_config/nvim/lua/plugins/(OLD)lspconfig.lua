return {
  --[[
-- Still need to migrate some things (Swift and XCode) over
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
      bashls = {},
      kotlin_language_server = {},
      html = {},
      cssls = {},
      eslint = {},
    },
    autoformat = false,
  },
  -- Setup servers --
  config = function(_, opts)
    local lspconfig = vim.lsp.enable
    for server, config in pairs(opts.servers) do
      config.capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config[server]
    end

    --- Manual LSP Configs ---
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    -- Omnisharp (C#) --
    local pid = vim.fn.getpid()

    lspconfig["omnisharp"]({
      cmd = { vim.fn.exepath("OmniSharp"), "--languageserver", "--hostPID", tostring(pid) },
      capabilities = capabilities,
    })
    -- Clangd (C/C++) --
    lspconfig["clangd"]({
      cmd = { 'clangd' },
      filetypes = { 'c', 'cpp' },
      capabilities = capabilities,
    })
    --Sourcekit lsp (Swift)--
    lspconfig["sourcekit"]({
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
--]]
}
