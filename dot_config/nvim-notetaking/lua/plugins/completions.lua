return {
  {
    "saghen/blink.cmp",
    version = '1.*',
    dependencies = {
      { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
    },

    opts = {
      keymap = {
        preset = "default",

        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<C-k>"] = { 'show', 'show_documentation', 'hide_documentation' },
      },
      appearance = {
        nerd_font_variant = "mono"
      },
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        ghost_text = { enabled = true },
      },
      snippets = { preset = 'luasnip' },
      fuzzy = { implementation = "prefer_rust_with_warning" },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
    opts_extend = { "sources.default" }
  }
}
