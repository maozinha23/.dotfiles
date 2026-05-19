-- -----------------------------------------------------------------------------
-- :help lsp-highlight
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Used for highlighting "text" references
    LspReferenceText = { link = "Visual" },

    -- Used for highlighting "read" references
    LspReferenceRead = { link = "Visual" },

    -- Used for highlighting "write" references
    LspReferenceWrite = { link = "Visual" },

    -- Used for highlighting reference targets (e.g. in a hover range)
    LspReferenceTarget = { link = "Visual" },

    -- Used for highlighting inlay hints
    LspInlayHint = { link = "NonText" },

    -- Used to color the virtual text of the codelens
    LspCodeLens = { link = "NonText" },

    -- Used to color the separator between two or more code lenses.
    LspCodeLensSeparator = { link = "NonText" },

    -- Used to highlight the active parameter in the signature help
    LspSignatureActiveParameter = { link = "Visual" },
  }
end
