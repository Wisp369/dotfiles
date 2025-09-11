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
        img_folder = "~/Sync/SchoolNotes/Diagrams/",

        -- Text insertion function
        img_text_func = function(client, path)
          path = client:vault_relative_path(path) or path
          return string.format("![%s](%s)", path.name, "~/Sync/SchoolNotes/Diagrams/" .. path.name)

          -- return string.format("![%s](%s)", path.name, path) (Uses absolute path)
        end
      },
      ui = {
        enable = false
      },
    }
  end,
})
