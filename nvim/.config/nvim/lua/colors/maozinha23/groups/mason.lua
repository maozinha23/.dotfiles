local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
hl.highlight("MasonBackdrop", { link = "Normal" })
hl.highlight("MasonNormal", { link = "NormalFloat" })
hl.highlight("MasonHeader", { link = "StatusLine" })
hl.highlight("MasonHeaderSecondary", { link = "MasonHeader" })

hl.highlight("MasonHighlight", { ctermfg = c.white })
hl.highlight("MasonHighlightBlock", { link = "MasonHeader" })
hl.highlight("MasonHighlightBlockBold", { link = "MasonHighlightBlock" })

hl.highlight("MasonHighlightSecondary", { link = "MasonHighlight" })
hl.highlight("MasonHighlightBlockSecondary", { link = "MasonHighlightBlock" })
hl.highlight("MasonHighlightBlockBoldSecondary", { link = "MasonHighlightBlockSecondary" })

hl.highlight("MasonLink", { link = "MasonHighlight" })

hl.highlight("MasonMuted", { ctermfg = c.bright_black })
hl.highlight("MasonMutedBlock", { link = "StatusLineNC" })
hl.highlight("MasonMutedBlockBold", { link = "MasonMutedBlock" })

hl.highlight("MasonError", { link = "ErrorMsg" })
hl.highlight("MasonWarning", { link = "WarningMsg" })

hl.highlight("MasonHeading", { link = "MasonHeader" })
