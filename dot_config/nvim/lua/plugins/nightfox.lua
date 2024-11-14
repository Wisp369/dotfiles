return {
	"EdenEast/nightfox.nvim", --Nightfox Theme

	config=function()
		require('nightfox').setup({
  options = {
	transparent = true,
	dim_inactive = true
	}
		})
		vim.cmd('colorscheme carbonfox')
end
}
