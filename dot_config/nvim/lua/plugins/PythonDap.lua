return {
  "mfussenegger/nvim-dap-python",
  config = function()
  require("dap-python").setup("~/.pyvenvs/debugpy/bin/python")
  end
}
