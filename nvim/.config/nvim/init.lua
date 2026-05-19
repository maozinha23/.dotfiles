-- Set language as english
vim.cmd("language C.UTF-8")

-- Colorscheme
vim.cmd.colorscheme("vgacolors")

-- Config files
require("config.options")
require("config.autocommands")
require("config.diagnostics")
require("config.keymaps")
require("config.lsp")
require("config.plugins")
