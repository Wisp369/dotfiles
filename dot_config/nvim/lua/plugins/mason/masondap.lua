return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui"
  },
  config = function()
    local dap = require("dap")
    local mason_dap = require("mason-nvim-dap")
    local ui = require("dapui")

    require("mason-nvim-dap").setup({
      handlers = {
        function(config)
          require('mason-nvim-dap').default_setup(config)
        end,
      },
    })
    ---DAP Configurations---
    dap.configurations = {
      python = {
        {
          type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
          request = 'launch',
          name = "Launch file",

          -- Options for debugpy

          program = "${file}", -- This configuration will launch the current file if used.
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
              return cwd .. '/venv/bin/python'
            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
              return cwd .. '/.venv/bin/python'
            else
              return '/usr/bin/python'
            end
          end,
        }
      },
      c = {
        {
          name = "Launch file",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopAtEntry = false,
          MIMode = "lldb",
        },
        {
          name = "Attach to lldbserver :1234",
          type = "codelldb",
          request = "launch",
          MIMode = "lldb",
          miDebuggerServerAddress = "localhost:1234",
          miDebuggerPath = vim.fn.exepath("codelldb"),
          cwd = "${workspaceFolder}",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
        },
      },
      cpp = dap.configurations.c,
    }
  end,
}
