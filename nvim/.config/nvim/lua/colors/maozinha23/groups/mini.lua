local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help mini.cmdline
-- -----------------------------------------------------------------------------
-- Border of autopeek window
hl.highlight("MiniCmdlinePeekBorder", { link = "FloatBorder" })

-- Line numbers in autopeek window
hl.highlight("MiniCmdlinePeekLineNr", { link = "DiagnosticSignWarn" })

-- Basic foreground/background of autopeek window
hl.highlight("MiniCmdlinePeekNormal", { link = "NormalFloat" })

-- Statuscolumn separator in autopeek window
hl.highlight("MiniCmdlinePeekSep", { link = "SignColumn" })

-- Signs in autopeek window
hl.highlight("MiniCmdlinePeekSign", { link = "DiagnosticSignHint" })

-- Title of autopeek window
hl.highlight("MiniCmdlinePeekTitle", { link = "FloatTitle" })
-- -----------------------------------------------------------------------------
-- :help mini.pick
-- -----------------------------------------------------------------------------
-- Window border
hl.highlight("MiniPickBorder", { link = "FloatBorder" })

-- Window border while picker is busy processing
hl.highlight("MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })

-- Non-prompt on border
hl.highlight("MiniPickBorderText", { link = "FloatTitle" })

-- Cursor during active picker (hidden by default)
hl.highlight("MiniPickCursor", { link = "Normal" })

-- Default icon for directory
hl.highlight("MiniPickIconDirectory", { link = "Directory" })

-- Default icon for file
hl.highlight("MiniPickIconFile", { link = "MiniPickNormal" })

-- Headers in info buffer and previews
hl.highlight("MiniPickHeader", { link = "DiagnosticFloatingHint" })

-- Current matched item
hl.highlight("MiniPickMatchCurrent", { link = "PmenuSel" })

-- Marked matched items
hl.highlight("MiniPickMatchMarked", { link = "Visual" })

-- Ranges matching query elements
hl.highlight("MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })

-- Basic foreground/background highlighting
hl.highlight("MiniPickNormal", { link = "NormalFloat" })

-- Target line in preview
hl.highlight("MiniPickPreviewLine", { link = "CursorLine" })

-- Target region in preview
hl.highlight("MiniPickPreviewRegion", { link = "IncSearch" })

-- Prompt
hl.highlight("MiniPickPrompt", { link = "DiagnosticFloatingInfo" })

-- Caret in prompt
hl.highlight("MiniPickPromptCaret", { link = "MiniPickPrompt" })

-- Prefix of the prompt
hl.highlight("MiniPickPromptPrefix", { link = "MiniPickPrompt" })
-- -----------------------------------------------------------------------------
-- :help mini.snippets
-- -----------------------------------------------------------------------------
-- Current tabstop
hl.highlight("MiniSnippetsCurrent", { link = "Normal" })

-- Current tabstop, placeholder is to be replaced
hl.highlight("MiniSnippetsCurrentReplace", { link = "Visual" })

-- Special '$0' tabstop
hl.highlight("MiniSnippetsFinal", { link = "MiniSnippetsVisited" })

-- Not yet visited tabstop(s)
hl.highlight("MiniSnippetsUnvisited", { link = "MiniSnippetsVisited" })

-- Visited tabstop(s)
hl.highlight("MiniSnippetsVisited", { ctermfg = c.bright_white, ctermbg = c.white })
-- -----------------------------------------------------------------------------
-- :help mini.surround
-- -----------------------------------------------------------------------------
-- Highlighting of requested surrounding
hl.highlight("MiniSurround", { link = "IncSearch" })
-- -----------------------------------------------------------------------------
-- :help mini.trailspace
-- -----------------------------------------------------------------------------
-- Highlight group for trailing space
-- MiniTrailSpace: Error
