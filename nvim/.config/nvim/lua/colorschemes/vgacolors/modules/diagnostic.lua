-- -----------------------------------------------------------------------------
-- :help diagnostic-highlights
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Used as the base highlight group
    DiagnosticError = { ctermfg = palette.red },

    -- Used as the base highlight group
    DiagnosticWarn = { ctermfg = palette.cyan },

    -- Used as the base highlight group
    DiagnosticInfo = { ctermfg = palette.white },

    -- Used as the base highlight group
    DiagnosticHint = { ctermfg = palette.white },

    -- Used as the base highlight group
    DiagnosticOk = { ctermfg = palette.green },

    -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextError = { link = "DiagnosticError" },

    -- Used for "Warn" diagnostic virtual text
    DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },

    -- Used for "Info" diagnostic virtual text
    DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },

    -- Used for "Hint" diagnostic virtual text
    DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

    -- Used for "Ok" diagnostic virtual text
    DiagnosticVirtualTextOk = { link = "DiagnosticOk" },

    -- Used for "Error" diagnostic virtual lines
    DiagnosticVirtualLinesError = { link = "DiagnosticError" },

    -- Used for "Warn" diagnostic virtual lines
    DiagnosticVirtualLinesWarn = { link = "DiagnosticWarn" },

    -- Used for "Info" diagnostic virtual lines
    DiagnosticVirtualLinesInfo = { link = "DiagnosticInfo" },

    -- Used for "Hint" diagnostic virtual lines
    DiagnosticVirtualLinesHint = { link = "DiagnosticHint" },

    -- Used for "Ok" diagnostic virtual lines
    DiagnosticVirtualLinesOk = { link = "DiagnosticOk" },

    -- Used to underline "Error" diagnostics
    DiagnosticUnderlineError = { sp = palette.red , underline = true },

    -- Used to underline "Warn" diagnostics
    DiagnosticUnderlineWarn = { sp = palette.cyan , underline = true },

    -- Used to underline "Info" diagnostics
    DiagnosticUnderlineInfo = { sp = palette.white , underline = true },

    -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineHint = { sp = palette.cyan , underline = true },

    -- Used to underline "Ok" diagnostics
    DiagnosticUnderlineOk = { sp = palette.green , underline = true },

    -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingError = { link = "DiagnosticError" },

    -- Used to color "Warn" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },

    -- Used to color "Info" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },

    -- Used to color "Hint" diagnostic messages in diagnostics float
    DiagnosticFloatingHint = { link = "DiagnosticHint" },

    -- Used to color "Ok" diagnostic messages in diagnostics float
    DiagnosticFloatingOk = { link = "DiagnosticOk" },

    -- Used for "Error" signs in sign column
    DiagnosticSignError = { ctermfg = palette.white, ctermbg = palette.red },

    -- Used for "Warn" signs in sign column
    DiagnosticSignWarn = { ctermfg = palette.black, ctermbg = palette.cyan },

    -- Used for "Info" signs in sign column
    DiagnosticSignInfo = { link = "DiagnosticInfo" },

    -- Used for "Hint" signs in sign column
    DiagnosticSignHint = { link = "DiagnosticHint" },

    -- Used for "Ok" signs in sign column
    DiagnosticSignOk = { ctermfg = palette.white, ctermbg = palette.green },

    -- Used for deprecated or obsolete code
    DiagnosticDeprecated = { sp = palette.red, strikethrough = true },

    -- Used for unnecessary or unused code
    DiagnosticUnnecessary = { link = "Comment" },
  }
end
