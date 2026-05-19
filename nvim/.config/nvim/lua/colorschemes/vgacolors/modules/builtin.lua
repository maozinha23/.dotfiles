-- -----------------------------------------------------------------------------
-- :help highlight-groups
-- -----------------------------------------------------------------------------
return function(palette)
  return {
    -- Used for the columns set with 'colorcolumn'
    ColorColumn = { link = "ErrorMsg" },

    -- Placeholder characters substituted for concealed text
    Conceal = { ctermfg = palette.bright_black, ctermbg = palette.white },

    -- Current match for the last search pattern
    CurSearch = { link = "Search" },

    -- Character under the cursor
    Cursor = { link = "Visual" },

    -- Character under the cursor when language-mapping is used
    lCursor = { link = "Cursor" },

    -- Like Cursor, but used when in IME mode
    CursorIM = { link = "Cursor" },

    -- Screen column that the cursor is in when 'cursorcolumn' is set
    CursorColumn = {},

    -- Screen line that the cursor is in when 'cursorline' is set
    CursorLine = {},

    -- Directory names (and other special names in listings)
    Directory = { ctermfg = palette.bright_blue },

    -- Diff mode: Added line
    DiffAdd = { ctermfg = palette.green },

    -- Diff mode: Changed line
    DiffChange = { ctermfg = palette.magenta },

    -- Diff mode: Deleted line
    DiffDelete = { ctermfg = palette.red },

    -- Diff mode: Changed text within a changed line
    DiffText = { ctermfg = palette.bright_magenta },

    -- Diff mode: Added text within a changed line
    DiffTextAdd = { link = "DiffText" },

    -- Filler lines (~) after the last line in the buffer
    EndOfBuffer = { link = "NonText" },

    -- Cursor in a focused terminal
    TermCursor = { link = "Cursor" },

    -- Error messages on the command line
    ErrorMsg = { ctermfg = palette.white, ctermbg = palette.red },

    -- Separators between window splits
    WinSeparator = { link = "Normal" },

    -- Line used for closed folds
    Folded = {},

    -- 'foldcolumn'
    FoldColumn = { link = "SignColumn" },

    -- Column where signs are displayed
    SignColumn = {},

    -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch = { link = "CurSearch" },

    -- :substitute replacement text highlighting.
    Substitute = { link = "Search" },

    -- Line number for ":number" and ":#" commands, and when 'number' or
    -- 'relativenumber' option is set
    LineNr = { link = "Normal" },

    -- Line number for when the 'relativenumber' option is set, above the cursor
    -- line
    LineNrAbove = { link = "LineNr" },

    -- Line number for when the 'relativenumber' option is set, below the cursor
    -- line
    LineNrBelow = { link = "LineNr" },

    -- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains
    -- "number" or is "both", for the cursor line
    CursorLineNr = { link = "Cursor" },

    -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineFold = { link = "FoldColumn" },

    -- Like SignColumn when 'cursorline' is set for the cursor line
    CursorLineSign = { link = "SignColumn" },

    -- Character under the cursor or just before it, if it is a paired bracket,
    -- and its match
    MatchParen = {},

    -- 'showmode' message (e.g., "-- INSERT --").
    ModeMsg = { link = "Visual" },

    -- Command-line area, also used for outputting messages, see also
    -- 'cmdheight'
    MsgArea = { link = "Normal" },

    -- Separator for scrolled messages |msgsep|
    MsgSeparator = { link = "StatusLine" },

    -- |more-prompt|
    MoreMsg = {},

    -- '@' at the end of the window, "<<<" at the start of the window for
    -- 'smoothscroll', characters from 'showbreak' and other characters that do
    -- not really exist in the text, such as the ">" displayed when a
    -- double-wide character doesn't fit at the end of the line
    NonText = {},

    -- Normal text
    Normal = { ctermfg = palette.white },

    -- Normal text in floating windows
    NormalFloat = { link = "Normal" },

    -- Border of floating windows
    FloatBorder = { link = "NormalFloat" },

    -- Title of floating windows
    FloatTitle = { link = "Title" },

    -- Footer of floating windows
    FloatFooter = { link = "Title" },

    -- Normal text in non-current windows
    NormalNC = { ctermfg = palette.white },

    -- Popup menu: Normal item
    Pmenu = { link = "Normal" },

    -- Popup menu: Selected item
    PmenuSel = { link = "StatusLine" },

    -- Popup menu: Normal item "kind"
    PmenuKind = { link = "Pmenu" },

    -- Popup menu: Selected item "kind"
    PmenuKindSel = { link = "PmenuSel" },

    -- Popup menu: Normal item "extra text"
    PmenuExtra = { link = "Pmenu"},

    -- Popup menu: Selected item "extra text"
    PmenuExtraSel = { link = "PmenuSel" },

    -- Popup menu: Scrollbar
    PmenuSbar = {},

    -- Popup menu: Thumb of the scrollbar
    PmenuThumb = { ctermfg = palette.black, ctermbg = palette.white },

    -- Popup menu: Matched text in normal item
    PmenuMatch = { ctermfg = palette.cyan },

    -- Popup menu: Matched text in selected item
    PmenuMatchSel = { link = "PmenuMatch" },

    -- Matched text of the currently inserted completion
    ComplMatchIns = {},

    -- |hit-enter| prompt and yes/no questions
    Question = {},

    -- Current quickfix item in the quickfix window. Combined with
    -- |hl-CursorLine| when the cursor is there
    QuickFixLine = {},

    -- Last search pattern highlighting (see 'hlsearch'). Also used for
    -- highlighting the current line in the quickfix window and similar items
    -- that need to stand out
    Search = { ctermfg = palette.black, ctermbg = palette.cyan },

    -- Tabstops in snippets
    SnippetTabstop = { link = "Visual" },

    -- Unprintable characters: Text displayed differently from what it really
    -- is. But not 'listchars' whitespace
    SpecialKey = {},

    -- Word that is not recognized by the spellchecker. Combined with the
    -- highlighting used otherwise
    SpellBad = { sp = palette.red, undercurl = true },

    -- Word that should start with a capital. Combined with the highlighting
    -- used otherwise
    SpellCap = { sp = palette.red, undercurl = true },

    -- Word that is recognized by the spellchecker as one that is used in
    -- another region. Combined with the highlighting used otherwise
    SpellLocal = { sp = palette.bright_yellow, undercurl = true },

    -- Word that is recognized by the spellchecker as one that is hardly ever
    -- used. Combined with the highlighting used otherwise
    SpellRare = { sp = palette.bright_yellow, undercurl = true },

    -- Status line of current window
    StatusLine = { ctermfg = palette.white, ctermbg = palette.blue },

    -- Status lines of not-current windows
    StatusLineNC = { ctermfg = palette.black, ctermbg = palette.white },

    -- Status line of terminal window
    StatusLineTerm = {},

    -- Status lines of not-current terminal windows
    StatusLineTermNC = {},

    -- Tab pages line, not active tab page label
    TabLine = { link = "StatusLineNC" },

    -- Tab pages line, where there are no labels
    TabLineFill = {},

    -- Tab pages line, active tab page label
    TabLineSel = { link = "StatusLine" },

    -- Titles for output from ":set all", ":autocmd" etpalette.
    Title = { link = "StatusLine" },

    -- Visual mode selection
    Visual = { ctermfg = palette.black, ctermbg = palette.white },

    -- Visual mode selection when vim is "Not Owning the Selection"
    VisualNOS = { link = "Visual" },

    -- Warning messages
    WarningMsg = { link = "ErrorMsg" },

    -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'
    Whitespace = { link = "NonText" },

    -- Current match in 'wildmenu' completion
    WildMenu = { link = "PmenuSel" },

    -- Window bar of current window
    Winbar = { link = "StatusLine" },

    -- Window bar of not-current window.,
    WinbarNC = { link = "StatusLineNC" },
  }
end
