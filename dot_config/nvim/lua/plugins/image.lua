return {
  "3rd/image.nvim",
  "vhyrro/luarocks.nvim",
  priority = 1001,
  config = true,
  dependencies = {
    "luarocks.nvim"
  },
  config = function()
    require("lazy").setup({
      backend = "kitty",
      intergrations = {
        --Markdown only
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          filetypes = {
            "markdown"
          },
        },
      },
    }, {
        rocks = {
            hererocks = true,  -- recommended if you do not have global installation of Lua 5.1.
        },
    })
  end
}
