local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help diagnostic-highlights
-- -----------------------------------------------------------------------------
-- Used as the base highlight group
hl.highlight("DiagnosticError", { ctermfg = c.red })

-- Used as the base highlight group
hl.highlight("DiagnosticWarn", { ctermfg = c.cyan })

-- Used as the base highlight group
hl.highlight("DiagnosticInfo", { ctermfg = c.white })

-- Used as the base highlight group
hl.highlight("DiagnosticHint", { ctermfg = c.white })

-- Used as the base highlight group
hl.highlight("DiagnosticOk", { ctermfg = c.green })

-- Used for "Error" diagnostic virtual text
hl.highlight("DiagnosticVirtualTextError", { link = "DiagnosticError" })

-- Used for "Warn" diagnostic virtual text
hl.highlight("DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })

-- Used for "Info" diagnostic virtual text
hl.highlight("DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" diagnostic virtual text
hl.highlight("DiagnosticVirtualTextHint", { link = "DiagnosticHint" })

-- Used for "Ok" diagnostic virtual text
hl.highlight("DiagnosticVirtualTextOk", { link = "DiagnosticOk" })

-- Used for "Error" diagnostic virtual lines
hl.highlight("DiagnosticVirtualLinesError", { link = "DiagnosticError" })

-- Used for "Warn" diagnostic virtual lines
hl.highlight("DiagnosticVirtualLinesWarn", { link = "DiagnosticWarn" })

-- Used for "Info" diagnostic virtual lines
hl.highlight("DiagnosticVirtualLinesInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" diagnostic virtual lines
hl.highlight("DiagnosticVirtualLinesHint", { link = "DiagnosticHint" })

-- Used for "Ok" diagnostic virtual lines
hl.highlight("DiagnosticVirtualLinesOk", { link = "DiagnosticOk" })

-- Used to underline "Error" diagnostics
hl.highlight("DiagnosticUnderlineError", { sp = c.red , underline = true })

-- Used to underline "Warn" diagnostics
hl.highlight("DiagnosticUnderlineWarn", { sp = c.cyan , underline = true })

-- Used to underline "Info" diagnostics
hl.highlight("DiagnosticUnderlineInfo", { sp = c.white , underline = true })

-- Used to underline "Hint" diagnostics.
hl.highlight("DiagnosticUnderlineHint", { sp = c.cyan , underline = true })

-- Used to underline "Ok" diagnostics
hl.highlight("DiagnosticUnderlineOk", { sp = c.green , underline = true })

-- Used to color "Error" diagnostic messages in diagnostics float
hl.highlight("DiagnosticFloatingError", { link = "DiagnosticError" })

-- Used to color "Warn" diagnostic messages in diagnostics float
hl.highlight("DiagnosticFloatingWarn", { link = "DiagnosticWarn" })

-- Used to color "Info" diagnostic messages in diagnostics float
hl.highlight("DiagnosticFloatingInfo", { link = "DiagnosticInfo" })

-- Used to color "Hint" diagnostic messages in diagnostics float
hl.highlight("DiagnosticFloatingHint", { link = "DiagnosticHint" })

-- Used to color "Ok" diagnostic messages in diagnostics float
hl.highlight("DiagnosticFloatingOk", { link = "DiagnosticOk" })

-- Used for "Error" signs in sign column
hl.highlight("DiagnosticSignError", { ctermfg = c.white, ctermbg = c.red })

-- Used for "Warn" signs in sign column
hl.highlight("DiagnosticSignWarn", { ctermfg = c.black, ctermbg = c.cyan })

-- Used for "Info" signs in sign column
hl.highlight("DiagnosticSignInfo", { link = "DiagnosticInfo" })

-- Used for "Hint" signs in sign column
hl.highlight("DiagnosticSignHint", { link = "DiagnosticHint" })

-- Used for "Ok" signs in sign column
hl.highlight("DiagnosticSignOk", { ctermfg = c.white, ctermbg = c.green })

-- Used for deprecated or obsolete code
hl.highlight("DiagnosticDeprecated", { sp = c.red, strikethrough = true })

-- Used for unnecessary or unused code
hl.highlight("DiagnosticUnnecessary", { link = "Comment" })
