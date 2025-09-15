return {
  "barrett-ruth/live-server.nvim",
  build = 'npm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = true,
  config = function()
   require("live-server").setup({

    }) 
  end
}
