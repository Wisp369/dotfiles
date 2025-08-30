--[[
return {
  "EdenEast/nightfox.nvim", --Nightfox Theme
  dependencies = { "OXY2DEV/markview.nvim" },

  config = function()
    require('theme').setup({
      options = {
        transparent = true,
        dim_inactive = true
      }
    })
    vim.cmd('colorscheme carbonfox')
  end
}
]] --
return {
  'uZer/pywal16.nvim',
  config = function()
    local wal = require("pywal16")

    vim.cmd.colorscheme("pywal16")
  end,
}
