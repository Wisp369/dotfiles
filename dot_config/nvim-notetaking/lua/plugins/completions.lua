return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      
      require('luasnip.loaders.from_vscode').lazy_load()

      local cmp = require('cmp')
      local luasnip = require('luasnip')

      local select_opts = {behavior = cmp.SelectBehavior.Select}
      cmp.setup({
        snippet = {
          expand = function(args)
              luasnip.lsp_expand(args.body)
            end
          },
          sources = {
            {name = 'path'},
            {name = 'nvim_lsp', keyword_length = 1},
            {name = 'buffer', keyword_length = 3},
            {name = 'luasnip', keyword_length = 2},
          },
          formatting = {
            fields = {'menu', 'abbr', 'kind'},
            format = function(entry, item)
              local menu_icon = {
                nvim_lsp = '',
                luasnip = '⋗',
                buffer = '',
                path = '',
              }

        item.menu = menu_icon[entry.source.name]
        return item
      end,
    },
    mapping = {
      ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
      ['<Down>'] = cmp.mapping.select_next_item(select_opts),

      ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
      ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

      ['<C-e>'] = cmp.mapping.abort(),
      ['<Tab>'] = cmp.mapping.confirm({select = true}),
      ['<CR>'] = cmp.mapping.confirm({select = false}),
        },
      })
    end
  }
}
