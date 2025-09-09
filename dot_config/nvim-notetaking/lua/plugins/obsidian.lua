return ({
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require("obsidian").setup {
      workspaces = {
        {
          name = "School Notes",
          path = "~/Sync/SchoolNotes"
        },
      },
      completion = {
        nvim_cmp = true,
      },
      templates = {
        subdir = "Templates",
        date_format = "%d-%m-%Y",
      },
      attachments = {
        img_folder = "Diagrams/",
      },
      ui = {
        enable = false
      },
    }
  end,
})
