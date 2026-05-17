-- Add plugins to current session
-- Builtin
vim.cmd("packadd nvim.undotree")

-- External
vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-mini/mini.cmdline",
  "https://github.com/nvim-mini/mini.move",
  "https://github.com/nvim-mini/mini.pick",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/nvim-mini/mini.surround",
  "https://github.com/nvim-mini/mini.trailspace",
  "https://github.com/stevearc/oil.nvim",
})

-- Load plugins configuration
require("plugins.mini-cmdline")
require("plugins.mini-move")
require("plugins.mini-pick")
require("plugins.mini-snippets")
require("plugins.mini-surround")
require("plugins.mini-trailspace")
require("plugins.oil")
