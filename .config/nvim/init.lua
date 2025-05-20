--vim.cmd("filetype plugin indent on")
--vim.cmd("syntax enable")
--vim.cmd("colorscheme maozinha23/init")
require("settings")
require("colors.maozinha23")
require("neovide")
--##############################################################################
-- Highlight
--##############################################################################
vim.cmd("highlight TrailingWhiteSpace ctermbg=darkred")
vim.cmd("match TrailingWhiteSpace /\\s\\+$/")
