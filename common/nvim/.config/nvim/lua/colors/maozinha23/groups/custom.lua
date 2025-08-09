local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- Custom highlight
-- -----------------------------------------------------------------------------
hi("TrailingWhiteSpace", { bg = c.red })
vim.fn.matchadd("TrailingWhiteSpace", [[\s\+$]])
