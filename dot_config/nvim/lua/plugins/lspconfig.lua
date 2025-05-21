return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true }
  },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
    local lspconfig = require("lspconfig")

    --- LSP Configs ---
    --Lua ls (Lua)--
    --Putting this at the top because it's big--
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          },
          workspace = {
            library = {
              [vim.fn.expand("VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
    --Basedpyright(Python)--
    lspconfig["basedpyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    --Csharp ls(C#)--
    lspconfig["csharp_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
    --Lemminx (XML / XAML)--
    lspconfig["lemminx"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
    --Clangd (C, C++)--
    lspconfig["clangd"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
    --asm-lsp (Assembly)--
    lspconfig["asm_lsp"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
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
