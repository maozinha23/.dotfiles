-- -----------------------------------------------------------------------------
-- :help mini.cmdline
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Border of autopeek window
    MiniCmdlinePeekBorder = { link = "FloatBorder" },

    -- Line numbers in autopeek window
    MiniCmdlinePeekLineNr = { link = "DiagnosticSignWarn" },

    -- Basic foreground/background of autopeek window
    MiniCmdlinePeekNormal = { link = "NormalFloat" },

    -- Statuscolumn separator in autopeek window
    MiniCmdlinePeekSep = { link = "SignColumn" },

    -- Signs in autopeek window
    MiniCmdlinePeekSign = { link = "DiagnosticSignHint" },

    -- Title of autopeek window
    MiniCmdlinePeekTitle = { link = "FloatTitle" },
-- -----------------------------------------------------------------------------
-- :help mini.pick
-- -----------------------------------------------------------------------------
    -- Window border
    MiniPickBorder = { link = "FloatBorder" },

    -- Window border while picker is busy processing
    MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },

    -- Non-prompt on border
    MiniPickBorderText = { link = "FloatTitle" },

    -- Cursor during active picker (hidden by default)
    MiniPickCursor = { link = "Normal" },

    -- Default icon for directory
    MiniPickIconDirectory = { link = "Directory" },

    -- Default icon for file
    MiniPickIconFile = { link = "MiniPickNormal" },

    -- Headers in info buffer and previews
    MiniPickHeader = { link = "DiagnosticFloatingHint" },

    -- Current matched item
    MiniPickMatchCurrent = { link = "PmenuSel" },

    -- Marked matched items
    MiniPickMatchMarked = { link = "Visual" },

    -- Ranges matching query elements
    MiniPickMatchRanges = { link = "DiagnosticFloatingHint" },

    -- Basic foreground/background highlighting
    MiniPickNormal = { link = "NormalFloat" },

    -- Target line in preview
    MiniPickPreviewLine = { link = "CursorLine" },

    -- Target region in preview
    MiniPickPreviewRegion = { link = "IncSearch" },

    -- Prompt
    MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

    -- Caret in prompt
    MiniPickPromptCaret = { link = "MiniPickPrompt" },

    -- Prefix of the prompt
    MiniPickPromptPrefix = { link = "MiniPickPrompt" },
-- -----------------------------------------------------------------------------
-- :help mini.snippets
-- -----------------------------------------------------------------------------
    -- Current tabstop
    MiniSnippetsCurrent = { link = "Normal" },

    -- Current tabstop, placeholder is to be replaced
    MiniSnippetsCurrentReplace = { link = "Visual" },

    -- Special '$0' tabstop
    MiniSnippetsFinal = { link = "MiniSnippetsVisited" },

    -- Not yet visited tabstop(s)
    MiniSnippetsUnvisited = { link = "MiniSnippetsVisited" },

    -- Visited tabstop(s)
    MiniSnippetsVisited = { ctermfg = palette.bright_white,
      ctermbg = palette.white },
-- -----------------------------------------------------------------------------
-- :help mini.surround
-- -----------------------------------------------------------------------------
    -- Highlighting of requested surrounding
    MiniSurround = { link = "IncSearch" },
-- -----------------------------------------------------------------------------
-- :help mini.trailspace
-- -----------------------------------------------------------------------------
    -- Highlight group for trailing space
    -- MiniTrailSpace: Error
  }
end
