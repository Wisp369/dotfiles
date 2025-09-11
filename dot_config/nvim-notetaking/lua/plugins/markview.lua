return {
  "OXY2DEV/markview.nvim",
  ft = { "markdown" },
  lazy = false,
  priority = 49,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("markview").setup()
    
    markdown = {
      enabled = true,
    }
  end
}
