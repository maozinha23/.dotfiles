vim.cmd.highlight('clear')
vim.cmd.syntax("reset")
vim.g.colors_name = "maozinha23"

-- Builtin groups
require("colors.maozinha23.groups.builtin")
require("colors.maozinha23.groups.syntax")
require("colors.maozinha23.groups.diagnostic")
-- require("colors.maozinha23.groups.treesitter")
-- require("colors.maozinha23.groups.lsp")
-- require("colors.maozinha23.groups.lsp-semantic")

-- Custom
-- require("colors.maozinha23.groups.custom")

-- Plugins
require("colors.maozinha23.groups.lazy")
require("colors.maozinha23.groups.oil")
require("colors.maozinha23.groups.mini")
-- require("colors.maozinha23.groups.fzf-lua")
