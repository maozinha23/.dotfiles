local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help diagnostic-highlights
-- -----------------------------------------------------------------------------
-- Used as the base highlight group.
hi("DiagnosticError", { fg = c.red })

-- Used as the base highlight group.
hi("DiagnosticWarn", { fg = c.bright_yellow })

-- Used as the base highlight group.
hi("DiagnosticInfo", { fg = c.bright_white })

-- Used as the base highlight group.
hi("DiagnosticHint", { fg = c.bright_yellow })

-- Used as the base highlight group.
hi("DiagnosticOk", { fg = c.green })

-- Used for "Error" diagnostic virtual text.
hi("DiagnosticVirtualTextError", { link = "DiagnosticError" })

-- Used for "Warn" diagnostic virtual text.
hi("DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })

-- Used for "Info" diagnostic virtual text.
hi("DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" diagnostic virtual text.
hi("DiagnosticVirtualTextHint", { link = "DiagnosticHint" })

-- Used for "Ok" diagnostic virtual text.
hi("DiagnosticVirtualTextOk", { link = "DiagnosticOk" })

-- Used for "Error" diagnostic virtual lines.
hi("DiagnosticVirtualLinesError", { link = "DiagnosticError" })

-- Used for "Warn" diagnostic virtual lines.
hi("DiagnosticVirtualLinesWarn", { link = "DiagnosticWarn" })

-- Used for "Info" diagnostic virtual lines.
hi("DiagnosticVirtualLinesInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" diagnostic virtual lines.
hi("DiagnosticVirtualLinesHint", { link = "DiagnosticHint" })

-- Used for "Ok" diagnostic virtual lines.
hi("DiagnosticVirtualLinesOk", { link = "DiagnosticOk" })

-- Used to underline "Error" diagnostics.
hi("DiagnosticUnderlineError", { sp = c.red , underline = true })

-- Used to underline "Warn" diagnostics.
hi("DiagnosticUnderlineWarn", { sp = c.bright_yellow , underline = true })

-- Used to underline "Info" diagnostics.
hi("DiagnosticUnderlineInfo", { sp = c.bright_white , underline = true })

-- Used to underline "Hint" diagnostics.
hi("DiagnosticUnderlineHint", { sp = c.bright_yellow , underline = true })

-- Used to underline "Ok" diagnostics.
hi("DiagnosticUnderlineOk", { sp = c.green , underline = true })

-- Used to color "Error" diagnostic messages in diagnostics float.
hi("DiagnosticFloatingError", { link = "DiagnosticError" })

-- Used to color "Warn" diagnostic messages in diagnostics float.
hi("DiagnosticFloatingWarn", { link = "DiagnosticWarn" })

-- Used to color "Info" diagnostic messages in diagnostics float.
hi("DiagnosticFloatingInfo", { link = "DiagnosticInfo" })

-- Used to color "Hint" diagnostic messages in diagnostics float.
hi("DiagnosticFloatingHint", { link = "DiagnosticHint" })

-- Used to color "Ok" diagnostic messages in diagnostics float.
hi("DiagnosticFloatingOk", { link = "DiagnosticOk" })

-- Used for "Error" signs in sign column.
hi("DiagnosticSignError", { link = "DiagnosticError" })

-- Used for "Warn" signs in sign column.
hi("DiagnosticSignWarn", { link = "DiagnosticWarn" })

-- Used for "Info" signs in sign column.
hi("DiagnosticSignInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" signs in sign column.
hi("DiagnosticSignHint", { link = "DiagnosticHint" })

-- Used for "Ok" signs in sign column.
hi("DiagnosticSignOk", { link = "DiagnosticOk" })

-- Used for deprecated or obsolete code.
hi("DiagnosticDeprecated", { sp = c.red, strikethrough = true })

-- Used for unnecessary or unused code.
hi("DiagnosticUnnecessary", { link = "Comment" })
