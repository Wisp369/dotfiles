--Carbonfox theme--
--[[return {
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
}]]

--Aura theme--
return {
  "baliestri/aura-theme",
  lazy = false,
  priority = 1000,

  config = function(plugin)
    vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
    vim.cmd([[colorscheme aura-dark]])
  end
}
