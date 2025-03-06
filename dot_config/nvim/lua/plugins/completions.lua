return {
  {
    "hrsh7th/nvim-cmp",
    priority = 100,
    Lazy = false,
    dependencies = {
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "rafamadriz/friendly-snippets",
      "onsails/lspkind.nvim",
    },

    config = function()
      -- Set up nvim-cmp.
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<TAB>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
        },
      })
      local ls = require "luasnip"
      ls.config.set_config {
        history = false,
        updateevents = "TextChanged, TextChangedI"
      }
      local lspkind = require("lspkind")
      cmp.setup {
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            show_labelDetails = true,
            before = function(entry, vim_item)
              return vim_item
            end
          })
        }
      }
    end

  }
}
