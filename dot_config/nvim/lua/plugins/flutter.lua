return {
	"nvim-flutter/flutter-tools.nvim",
  ft = "dart",
	requires = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local flutter = require("flutter-tools")
		flutter.setup({})
	end,
}
