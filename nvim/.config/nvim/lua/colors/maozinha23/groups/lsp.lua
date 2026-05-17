local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help lsp-highlight
-- -----------------------------------------------------------------------------
-- Used for highlighting "text" references
hl.highlight("LspReferenceText", { link = "Visual" })

-- Used for highlighting "read" references
hl.highlight("LspReferenceRead", { link = "Visual" })

-- Used for highlighting "write" references
hl.highlight("LspReferenceWrite", { link = "Visual" })

-- Used for highlighting reference targets (e.g. in a hover range)
hl.highlight("LspReferenceTarget", { link = "Visual" })

-- Used for highlighting inlay hints
hl.highlight("LspInlayHint", { link = "NonText" })

-- Used to color the virtual text of the codelens
hl.highlight("LspCodeLens", { link = "NonText" })

-- Used to color the separator between two or more code lenses.
hl.highlight("LspCodeLensSeparator", { link = "NonText" })

-- Used to highlight the active parameter in the signature help
hl.highlight("LspSignatureActiveParameter", { link = "Visual" })
