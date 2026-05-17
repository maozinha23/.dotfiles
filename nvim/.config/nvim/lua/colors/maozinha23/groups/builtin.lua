local hl = require("colors.maozinha23.highlight")
local c = require("colors.maozinha23.palette")
-- -----------------------------------------------------------------------------
-- :help highlight-groups
-- -----------------------------------------------------------------------------
-- Used for the columns set with 'colorcolumn'
hl.highlight("ColorColumn", { link = "ErrorMsg" })

-- Placeholder characters substituted for concealed text
hl.highlight("Conceal", { ctermfg = c.bright_black, ctermbg = c.white })

-- Current match for the last search pattern
hl.highlight("CurSearch", { link = "Search" })

-- Character under the cursor
hl.highlight("Cursor", { link = "Visual" })

-- Character under the cursor when language-mapping is used
hl.highlight("lCursor", { link = "Cursor" })

-- Like Cursor, but used when in IME mode
hl.highlight("CursorIM", { link = "Cursor" })

-- Screen column that the cursor is in when 'cursorcolumn' is set
hl.highlight("CursorColumn", {})

-- Screen line that the cursor is in when 'cursorline' is set
hl.highlight("CursorLine", {})

-- Directory names (and other special names in listings)
hl.highlight("Directory", { ctermfg = c.bright_blue })

-- Diff mode: Added line
hl.highlight("DiffAdd", { ctermfg = c.green })

-- Diff mode: Changed line
hl.highlight("DiffChange", { ctermfg = c.magenta })

-- Diff mode: Deleted line
hl.highlight("DiffDelete", { ctermfg = c.red })

-- Diff mode: Changed text within a changed line
hl.highlight("DiffText", { ctermfg = c.bright_magenta })

-- Diff mode: Added text within a changed line
hl.highlight("DiffTextAdd", { link = "DiffText" })

-- Filler lines (~) after the last line in the buffer
hl.highlight("EndOfBuffer", { link = "NonText" })

-- Cursor in a focused terminal
hl.highlight("TermCursor", { link = "Cursor" })

-- Error messages on the command line
hl.highlight("ErrorMsg", { ctermfg = c.white, ctermbg = c.red })

-- Separators between window splits
hl.highlight("WinSeparator", { link = "Normal" })

-- Line used for closed folds
hl.highlight("Folded", {})

-- 'foldcolumn'
hl.highlight("FoldColumn", { link = "SignColumn" })

-- Column where signs are displayed
hl.highlight("SignColumn", {})

-- 'incsearch' highlighting; also used for the text replaced with ":s///c"
hl.highlight("IncSearch", { link = "CurSearch" })

-- :substitute replacement text highlighting.
hl.highlight("Substitute", { link = "Search" })

-- Line number for ":number" and ":#" commands, and when 'number' or
-- 'relativenumber' option is set
hl.highlight("LineNr", { link = "Normal" })

-- Line number for when the 'relativenumber' option is set, above the cursor
-- line
hl.highlight("LineNrAbove", { link = "LineNr" })

-- Line number for when the 'relativenumber' option is set, below the cursor
-- line
hl.highlight("LineNrBelow", { link = "LineNr" })

-- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or
-- is "both", for the cursor line
hl.highlight("CursorLineNr", { link = "Cursor" })

-- Like FoldColumn when 'cursorline' is set for the cursor line
hl.highlight("CursorLineFold", { link = "FoldColumn" })

-- Like SignColumn when 'cursorline' is set for the cursor line
hl.highlight("CursorLineSign", { link = "SignColumn" })

-- Character under the cursor or just before it, if it is a paired bracket, and
-- its match
hl.highlight("MatchParen", {})

-- 'showmode' message (e.g., "-- INSERT --").
hl.highlight("ModeMsg", { link = "Visual" })

-- Command-line area, also used for outputting messages, see also 'cmdheight'
hl.highlight("MsgArea", { link = "Normal" })

-- Separator for scrolled messages |msgsep|
hl.highlight("MsgSeparator", { link = "StatusLine" })

-- |more-prompt|
hl.highlight("MoreMsg", {})

-- '@' at the end of the window, "<<<" at the start of the window for
-- 'smoothscroll', characters from 'showbreak' and other characters that do not
-- really exist in the text, such as the ">" displayed when a double-wide
-- character doesn't fit at the end of the line
hl.highlight("NonText", {})

-- Normal text
hl.highlight("Normal", { ctermfg = c.white })

-- Normal text in floating windows
hl.highlight("NormalFloat", { link = "Normal" })

-- Border of floating windows
hl.highlight("FloatBorder", { link = "NormalFloat" })

-- Title of floating windows
hl.highlight("FloatTitle", { link = "Title" })

-- Footer of floating windows
hl.highlight("FloatFooter", { link = "Title" })

-- Normal text in non-current windows
hl.highlight("NormalNC", { ctermfg = c.white })

-- Popup menu: Normal item
hl.highlight("Pmenu", { link = "Normal" })

-- Popup menu: Selected item
hl.highlight("PmenuSel", { link = "StatusLine" })

-- Popup menu: Normal item "kind"
hl.highlight("PmenuKind", { link = "Pmenu" })

-- Popup menu: Selected item "kind"
hl.highlight("PmenuKindSel", { link = "PmenuSel" })

-- Popup menu: Normal item "extra text"
hl.highlight("PmenuExtra", { link = "Pmenu"})

-- Popup menu: Selected item "extra text"
hl.highlight("PmenuExtraSel", { link = "PmenuSel" })

-- Popup menu: Scrollbar
hl.highlight("PmenuSbar", {})

-- Popup menu: Thumb of the scrollbar
hl.highlight("PmenuThumb", { ctermfg = c.black, ctermbg = c.white })

-- Popup menu: Matched text in normal item
hl.highlight("PmenuMatch", { ctermfg = c.cyan })

-- Popup menu: Matched text in selected item
hl.highlight("PmenuMatchSel", { link = "PmenuMatch" })

-- Matched text of the currently inserted completion
hl.highlight("ComplMatchIns", {})

-- |hit-enter| prompt and yes/no questions
hl.highlight("Question", {})

-- Current quickfix item in the quickfix window. Combined with |hl-CursorLine|
-- when the cursor is there
hl.highlight("QuickFixLine", {})

-- Last search pattern highlighting (see 'hlsearch'). Also used for highlighting
-- the current line in the quickfix window and similar items that need to stand
-- out
hl.highlight("Search", { ctermfg = c.black, ctermbg = c.cyan })

-- Tabstops in snippets
hl.highlight("SnippetTabstop", { link = "Visual" })

-- Unprintable characters: Text displayed differently from what it really is.
-- But not 'listchars' whitespace
hl.highlight("SpecialKey", {})

-- Word that is not recognized by the spellchecker. Combined with the
-- highlighting used otherwise
hl.highlight("SpellBad", { sp = c.red, undercurl = true })

-- Word that should start with a capital. Combined with the highlighting used
-- otherwise
hl.highlight("SpellCap", { sp = c.red, undercurl = true })

-- Word that is recognized by the spellchecker as one that is used in another
-- region. Combined with the highlighting used otherwise
hl.highlight("SpellLocal", { sp = c.bright_yellow, undercurl = true })

-- Word that is recognized by the spellchecker as one that is hardly ever used.
-- Combined with the highlighting used otherwise
hl.highlight("SpellRare", { sp = c.bright_yellow, undercurl = true })

-- Status line of current window
hl.highlight("StatusLine", { ctermfg = c.white, ctermbg = c.blue })

-- Status lines of not-current windows
hl.highlight("StatusLineNC", { ctermfg = c.black, ctermbg = c.white })

-- Status line of terminal window
hl.highlight("StatusLineTerm", {})

-- Status lines of not-current terminal windows
hl.highlight("StatusLineTermNC", {})

-- Tab pages line, not active tab page label
hl.highlight("TabLine", { link = "StatusLineNC" })

-- Tab pages line, where there are no labels
hl.highlight("TabLineFill", {})

-- Tab pages line, active tab page label
hl.highlight("TabLineSel", { link = "StatusLine" })

-- Titles for output from ":set all", ":autocmd" etc.
hl.highlight("Title", { link = "StatusLine" })

-- Visual mode selection
hl.highlight("Visual", { ctermfg = c.black, ctermbg = c.white })

-- Visual mode selection when vim is "Not Owning the Selection"
hl.highlight("VisualNOS", { link = "Visual" })

-- Warning messages
hl.highlight("WarningMsg", { link = "ErrorMsg" })

-- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'
hl.highlight("Whitespace", { link = "NonText" })

-- Current match in 'wildmenu' completion
hl.highlight("WildMenu", { link = "PmenuSel" })

-- Window bar of current window
hl.highlight("Winbar", { link = "StatusLine" })

-- Window bar of not-current window.
hl.highlight("WinbarNC", { link = "StatusLineNC" })
