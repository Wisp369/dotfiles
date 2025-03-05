return {
  "mfussenegger/nvim-dap-python",
dependencies = {
    "mfussenegger/nvim-dap",
  },
  lazy = true,
  config = function()
  local python_path = table.concat({ vim.fn.stdpath('data'),  'mason', 'packages', 'debugpy', 'venv', 'bin', 'python'}, '/'):gsub('//+', '/')
  require('dap-python').setup(python_path)
  end

}
