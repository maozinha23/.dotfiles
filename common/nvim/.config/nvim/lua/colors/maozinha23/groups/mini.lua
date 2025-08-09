local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help mini.completion
-- -----------------------------------------------------------------------------
-- Signature active parameter
hi("MiniCompletionActiveParameter", { link = "LspSignatureActiveParameter" })

-- Info window border when text is outdated due to explicit delay during fast
-- movement through candidates.
hi("MiniCompletionInfoBorderOutdated", { link = "DiagnosticFloatingWarn" })
-- -----------------------------------------------------------------------------
-- :help mini.snippets
-- -----------------------------------------------------------------------------
-- Current tabstop
hi("MiniSnippetsCurrent", { sp = c.bright_yellow, underdouble = true })

-- Current tabstop, placeholder is to be replaced
hi("MiniSnippetsCurrentReplace", { sp = c.red, underdouble = true })

-- Special '$0' tabstop
hi("MiniSnippetsFinal", { sp = c.green, underdouble = true })

-- Not yet visited tabstop(s)
hi("MiniSnippetsUnvisited", { sp = c.bright_yellow, underdouble = true })

-- Visited tabstop(s)
hi("MiniSnippetsVisited", { sp = c.bright_white, underdouble = true })
-- -----------------------------------------------------------------------------
-- :help mini.surround
-- -----------------------------------------------------------------------------
-- Highlighting of requested surrounding
hi("MiniSurround", { link = "IncSearch" })
-- -----------------------------------------------------------------------------
-- :help mini.trailspace
-- -----------------------------------------------------------------------------
-- Highlight group for trailing space
hi("MiniTrailspace", { link = "Error" })
