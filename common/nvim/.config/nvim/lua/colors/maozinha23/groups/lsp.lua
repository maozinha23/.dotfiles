local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help lsp-highlight
-- -----------------------------------------------------------------------------
-- Used for highlighting "text" references
hi("LspReferenceText", { link = "Visual" })

-- Used for highlighting "read" references
hi("LspReferenceRead", { link = "Visual" })

-- Used for highlighting "write" references
hi("LspReferenceWrite", { link = "Visual" })

-- Used for highlighting reference targets (e.g. in a hover range)
hi("LspReferenceTarget", { link = "Visual" })

-- Used for highlighting inlay hints
hi("LspInlayHint", { link = "NonText" })

-- Used to color the virtual text of the codelens
hi("LspCodeLens", { link = "NonText" })

-- Used to color the separator between two or more code lenses.
hi("LspCodeLensSeparator", { link = "NonText" })

-- Used to highlight the active parameter in the signature help
hi("LspSignatureActiveParameter", { link = "Visual" })
