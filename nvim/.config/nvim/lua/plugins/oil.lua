require("oil").setup({
  columns = {
  --   "icon",
  --   "permissions",
  --   "size",
  --   "mtime",
  },

  delete_to_trash = true,

  float = {
    border = "single",
  },

  view_options = {
    show_hidden = true,
    case_insensitive = true,
  },
})
