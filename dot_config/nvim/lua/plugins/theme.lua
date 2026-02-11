--Carbonfox theme--
--[[
return {
  "EdenEast/nightfox.nvim", --Nightfox Theme

  config = function()
    require('nightfox').setup({
      options = {
        transparent = true,
        dim_inactive = true
      }
    })
    vim.cmd('colorscheme carbonfox')
  end
}
]]

--Pywal theme--
--[[
return {
  'uZer/pywal16.nvim',
  config = function()
    local wal = require("pywal16")

    vim.cmd.colorscheme("pywal16")
  end,
}
]]
--

--Nightfly--
return {
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("nightfly")
  end,
}

--Moonfly--
--[[
return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("moonfly")
  end,
}
]]
--
