return {
  "mfussenegger/nvim-dap-python",
  config = function()
  local pythonPath = table.concat({ vim.fn.stdpath('data'),  'mason', 'packages', 'debugpy', 'venv', 'bin', 'python'}, '/'):gsub('//+', '/')
  require("dap-python").setup(pythonPath)
  end
}
