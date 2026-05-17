vim.cmd.highlight("clear")
vim.cmd.syntax("reset")
vim.g.colors_name = "maozinha23"

-- Builtin groups
require("colors.maozinha23.groups.builtin")
require("colors.maozinha23.groups.syntax")
require("colors.maozinha23.groups.diagnostic")
-- require("colors.maozinha23.groups.treesitter")
-- require("colors.maozinha23.groups.lsp")
-- require("colors.maozinha23.groups.lsp-semantic")

-- Plugins
require("colors.maozinha23.groups.mason")
require("colors.maozinha23.groups.mini")
require("colors.maozinha23.groups.oil")
