local c = require("colors.maozinha23.palette").colors
local hi = require("colors.maozinha23.highlight").highlight
-- -----------------------------------------------------------------------------
-- :help highlight-groups
-- -----------------------------------------------------------------------------
-- Used for the columns set with 'colorcolumn'
hi("ColorColumn", { fg = c.bright_white, bg = c.red, bold = true })

-- Placeholder characters substituted for concealed text
hi("Conceal", { fg = c.white, bg = c.bright_black })

-- Current match for the last search pattern
hi("CurSearch", { link = "Search" })

-- Character under the cursor
hi("Cursor", {})

-- Character under the cursor when language-mapping is used
hi("lCursor", { link = "Cursor" })

-- Like Cursor, but used when in IME mode
hi("CursorIM", { link = "Cursor" })

-- Screen column that the cursor is in when 'cursorcolumn' is set
hi("CursorColumn", {})

-- Screen line that the cursor is in when 'cursorline' is set
hi("CursorLine", {})

-- Directory names (and other special names in listings)
hi("Directory", { fg = c.blue, bold = true })

-- Diff mode: Added line
hi("DiffAdd", { fg = c.green })

-- Diff mode: Changed line
hi("DiffChange", { fg = c.bright_cyan })

-- Diff mode: Deleted line
hi("DiffDelete", { fg = c.red })

-- Diff mode: Changed text within a changed line
hi("DiffText", { fg = c.bright_cyan, bold = true })

-- Diff mode: Added text within a changed line
hi("DiffTextAdd", { link = "DiffText" })

-- Filler lines (~) after the last line in the buffer
hi("EndOfBuffer", { link = "NonText" })

-- Cursor in a focused terminal
hi("TermCursor", {})

-- Error messages on the command line
hi("ErrorMsg", { bg = c.red, bold = true })

-- Separators between window splits
hi("WinSeparator", { link = "Normal" })

-- Line used for closed folds
hi("Folded", {})

-- 'foldcolumn'
hi("FoldColumn", { link = "SignColumn" })

-- Column where signs are displayed
hi("SignColumn", {})

-- 'incsearch' highlighting; also used for the text replaced with ":s///c"
hi("IncSearch", { link = "CurSearch" })

-- :substitute replacement text highlighting.
hi("Substitute", { link = "Search" })

-- Line number for ":number" and ":#" commands, and when 'number' or
-- 'relativenumber' option is set
hi("LineNr", { fg = c.bright_white })

-- Line number for when the 'relativenumber' option is set, above the cursor
-- line
hi("LineNrAbove", { link = "LineNr" })

-- Line number for when the 'relativenumber' option is set, below the cursor
-- line
hi("LineNrBelow", { link = "LineNr" })

-- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or
-- is "both", for the cursor line
hi("CursorLineNr", { fg = c.black, bg = c.bright_yellow, bold = true })

-- Like FoldColumn when 'cursorline' is set for the cursor line
hi("CursorLineFold", { link = "FoldColumn" })

-- Like SignColumn when 'cursorline' is set for the cursor line
hi("CursorLineSign", { link = "SignColumn" })

-- Character under the cursor or just before it, if it is a paired bracket, and
-- its match
hi("MatchParen", { bold = true })

-- 'showmode' message (e.g., "-- INSERT --").
hi("ModeMsg", { fg = c.black, bg = c.bright_yellow, bold = true })

-- Command-line area, also used for outputting messages, see also 'cmdheight'
hi("MsgArea", {})

-- Separator for scrolled messages |msgsep|
hi("MsgSeparator", { link = "StatusLine" })

-- |more-prompt|
hi("MoreMsg", {})

-- '@' at the end of the window, "<<<" at the start of the window for
-- 'smoothscroll', characters from 'showbreak' and other characters that do not
-- really exist in the text, such as the ">" displayed when a double-wide
-- character doesn't fit at the end of the line
hi("NonText", {})

-- Normal text
hi("Normal", { fg = c.bright_white })

-- Normal text in floating windows
hi("NormalFloat", {})

-- Border of floating windows
hi("FloatBorder", { link = "NormalFloat" })

-- Title of floating windows
hi("FloatTitle", { link = "Title" })

-- Footer of floating windows
hi("FloatFooter", { link = "Title" })

-- Normal text in non-current windows
hi("NormalNC", {})

-- Popup menu: Normal item
hi("Pmenu", {})

-- Popup menu: Selected item
hi("PmenuSel", { fg = c.bright_white, bg = c.blue, bold = true })

-- Popup menu: Normal item "kind"
hi("PmenuKind", { link = "Pmenu" })

-- Popup menu: Selected item "kind"
hi("PmenuKindSel", { link = "PmenuSel" })

-- Popup menu: Normal item "extra text"
hi("PmenuExtra", { link = "Pmenu"})

-- Popup menu: Selected item "extra text"
hi("PmenuExtraSel", { link = "PmenuSel" })

-- Popup menu: Scrollbar
hi("PmenuSbar", { bg = c.bright_black })

-- Popup menu: Thumb of the scrollbar
hi("PmenuThumb", { bg = c.bright_white })

-- Popup menu: Matched text in normal item
hi("PmenuMatch", {})

-- Popup menu: Matched text in selected item
hi("PmenuMatchSel", {})

-- Matched text of the currently inserted completion
hi("ComplMatchIns", {})

-- |hit-enter| prompt and yes/no questions
hi("Question", {})

-- Current quickfix item in the quickfix window. Combined with |hl-CursorLine|
-- when the cursor is there
hi("QuickFixLine", {})

-- Last search pattern highlighting (see 'hlsearch'). Also used for highlighting
-- the current line in the quickfix window and similar items that need to stand
-- out
hi("Search", { fg = c.black, bg = c.bright_yellow, bold = true })

-- Tabstops in snippets
hi("SnippetTabstop", { link = "Visual" })

-- Unprintable characters: Text displayed differently from what it really is.
-- But not 'listchars' whitespace
hi("SpecialKey", {})

-- Word that is not recognized by the spellchecker. Combined with the
-- highlighting used otherwise
hi("SpellBad", { sp = c.red, undercurl = true })

-- Word that should start with a capital. Combined with the highlighting used
-- otherwise
hi("SpellCap", { sp = c.red, undercurl = true })

-- Word that is recognized by the spellchecker as one that is used in another
-- region. Combined with the highlighting used otherwise
hi("SpellLocal", { sp = c.bright_yellow, undercurl = true })

-- Word that is recognized by the spellchecker as one that is hardly ever used.
-- Combined with the highlighting used otherwise
hi("SpellRare", { sp = c.bright_yellow, undercurl = true })

-- Status line of current window
hi("StatusLine", { fg = c.bright_white, bg = c.blue, bold = true })

-- Status lines of not-current windows
hi("StatusLineNC", { fg = c.bright_white, bg = c.bright_black, bold = true })

-- Status line of terminal window
hi("StatusLineTerm", {})

-- Status lines of not-current terminal windows
hi("StatusLineTermNC", {})

-- Tab pages line, not active tab page label
hi("TabLine", { fg = c.bright_white, bg = c.bright_black, bold = true })

-- Tab pages line, where there are no labels
hi("TabLineFill", {})

-- Tab pages line, active tab page label
hi("TabLineSel", { fg = c.bright_white, bg = c.blue, bold = true })

-- Titles for output from ":set all", ":autocmd" etc.
hi("Title", { bold = true })

-- Visual mode selection
hi("Visual", { fg = c.black, bg = c.bright_yellow, bold = true })

-- Visual mode selection when vim is "Not Owning the Selection"
hi("VisualNOS", { link = "Visual" })

-- Warning messages
hi("WarningMsg", { fg = c.bright_white, bg = c.red, bold = true })

-- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'
hi("Whitespace", { link = "NonText" })

-- Current match in 'wildmenu' completion
hi("WildMenu", { link = "PmenuSel" })

-- Window bar of current window
hi("Winbar", { fg = c.bright_white, bg = c.blue, bold = true })

-- Window bar of not-current window.
hi("WinbarNC", { fg = c.bright_white, bg = c.bright_black, bold = true })
