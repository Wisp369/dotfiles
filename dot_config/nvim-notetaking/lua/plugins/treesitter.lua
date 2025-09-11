return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "OXY2DEV/markview.nvim" },
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "java", "python", "css", "c", "c_sharp", "cpp", "html", "javascript" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
