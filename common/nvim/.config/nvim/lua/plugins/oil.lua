return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,

  config = function()
    require("oil").setup({
      columns = {
        -- "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },

     -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
      delete_to_trash = true,

      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,

        -- Sort file and directory names case insensitive
        case_insensitive = true,
      },

      -- Configuration for the floating action confirmation window
      confirmation = {
        border = "single",
      },

      -- Configuration for the floating progress window
      progress = {
        border = "single",
      },

      -- Configuration for the floating SSH window
      ssh = {
        border = "single",
      },

      -- Configuration for the floating keymaps help window
      keymaps_help = {
        border = "single",
      },
    })
  end,
}
