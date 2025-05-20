local palette = require("colors.maozinha23.palette").colors
local util = require("colors.maozinha23.utils")

-- highlight | hi
vim.cmd.highlight("clear")

-- Get the default colors back
if vim.fn.exists("syntax_on") then
  vim.cmd.syntax("reset")
end

vim.g.colors_name = "maozinha23"
-- -----------------------------------------------------------------------------
-- Any comment.
-- -----------------------------------------------------------------------------
util.highlight("Comment", { fg = palette.bright_black, bg = palette.none, italic = true })
-- -----------------------------------------------------------------------------
-- Any constant.
--util.highlight("Constant", { fg = palette.bright_white, bg = palette.none })

-- String constant: "this is a string"
util.link("String", "Constant")

-- Character constant: 'c', '\n'
util.link("Character", "Constant")

-- Number constant: 234, 0xff
util.link("Number", "Constant")

-- Boolean constant: TRUE, false
util.link("Boolean", "Constant")

-- Floating point constant: 2.3e10
util.link("Float", "Constant")
util.highlight("Constant", { fg = palette.bright_white, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Any variable name.
--util.highlight("Identifier", { fg = palette.bright_blue, bg = palette.none })

-- Function name (also: methods for classes).
util.link("Function", "Identifier")
util.highlight("Identifier", { fg = palette.bright_blue, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Any statement.
--util.highlight("Statement", { fg = palette.blue, bg = palette.none, bold = true })

-- if, then, else, endif, switch, etc.
util.link("Conditional", "Statement")

-- for, do, while, etc.
util.link("Repeat", "Statement")

-- case, default, etc.
util.link("Label", "Statement")

-- "sizeof", "+", "*", etc.
util.link("Operator", "Statement")

-- Any other keyword.
util.link("Keyword", "Statement")

-- try, catch, throw
util.link("Exception", "Statement")
util.highlight("Statement", { fg = palette.blue, bg = palette.none, bold = true })
-- -----------------------------------------------------------------------------
-- Generic Preprocessor.
--util.highlight("PreProc", { fg = palette.bright_blue, bg = palette.none, bold = true })

-- Preprocessor #include
util.link("Include", "PreProc")

-- Preprocessor #define
util.link("Define", "PreProc")

-- Same as Define
util.link("Macro", "PreProc")

-- Preprocessor #if, #else, #endif, etc.
util.link("PreCondit", "PreProc")
util.highlight("PreProc", { fg = palette.bright_blue, bg = palette.none, bold = true })
-- -----------------------------------------------------------------------------
-- int, long, char, etc.
--util.highlight("Type", { fg = palette.bright_blue, bg = palette.none })

-- static, register, volatile, etc.
util.link("StorageClass", "Type")

-- struct, union, enum, etc.
util.link("Structure", "Type")

-- A typedef
util.link("Typedef", "Type")
util.highlight("Type", { fg = palette.bright_blue, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Any special symbol.
--util.highlight("Special", { fg = palette.bright_yellow, bg = palette.none })

-- Special character in a constant.
util.link("SpecialChar", "Special")

-- You can use CTRL-] on this.
util.link("Tag", "Special")

-- Character that needs attention.
util.link("Delimiter", "Special")

-- Special things inside a comment.
util.link("SpecialComment", "Special")

-- Debugging statements.
util.link("Debug", "Special")
util.highlight("Special", { fg = palette.bright_yellow, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Text that stands out, HTML links.
util.highlight("Underlined", { fg = palette.none, bg = palette.none, underline = true })
-- -----------------------------------------------------------------------------
-- Left blank, hidden. |hl-Ignore|
util.highlight("Ignore", { fg = palette.none, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Any erroneous construct.
util.highlight("Error", { fg = palette.bright_white, bg = palette.red, bold = true })
-- -----------------------------------------------------------------------------
-- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX.
util.highlight("Todo", { fg = palette.bright_yellow, bg = palette.none, underline = true })
-- -----------------------------------------------------------------------------
-- Added line in a diff.
util.highlight("Added", { fg = palette.none, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Changed line in a diff.
util.highlight("Changed", { fg = palette.none, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Removed line in a diff.
util.highlight("Removed", { fg = palette.none, bg = palette.none })
-- -----------------------------------------------------------------------------
-- Used for the columns set with 'colorcolumn'.
util.highlight("ColorColumn", { fg = palette.bright_white, bg = palette.red, bold = true })

-- Placeholder characters substituted for concealed text (see 'conceallevel').
util.highlight("Conceal", { fg = palette.none, bg = palette.none })

-- Character under the cursor.
util.highlight("Cursor", { fg = palette.none, bg = palette.none })

-- Character under the cursor when language-mapping is used (see 'guicursor').
util.highlight("lCursor", { fg = palette.none, bg = palette.none })

-- Like Cursor, but used when in IME mode. |CursorIM|
util.highlight("CursorIM", { fg = palette.none, bg = palette.none })

-- Screen column that the cursor is in when 'cursorcolumn' is set.
util.highlight("CursorColumn", { fg = palette.none, bg = palette.none })

-- Screen line that the cursor is in when 'cursorline' is set.
util.highlight("CursorLine", { fg = palette.none, bg = palette.none })

-- Directory names (and other special names in listings).
util.highlight("Directory", { fg = palette.none, bg = palette.none })

-- Diff mode: Added line.
util.highlight("DiffAdd", { fg = palette.none, bg = palette.none })

-- Diff mode: Changed line.
util.highlight("DiffChange", { fg = palette.none, bg = palette.none })

-- Diff mode: Deleted line.
util.highlight("DiffDelete", { fg = palette.none, bg = palette.none })

-- Diff mode: Changed text within a changed line.
util.highlight("DiffText", { fg = palette.none, bg = palette.none })

-- Filler lines (~) after the last line in the buffer. By default, this is
-- highlighted like hl-NonText.
util.highlight("EndOfBuffer", { fg = palette.none, bg = palette.none })

-- Error messages on the command line.
util.highlight("ErrorMsg", { fg = palette.none, bg = palette.none })

-- Column separating vertically split windows.
util.highlight("VertSplit", { fg = palette.none, bg = palette.none })

-- Line used for closed folds.
util.highlight("Folded", { fg = palette.none, bg = palette.none })

-- 'foldcolumn'
util.highlight("FoldColumn", { fg = palette.none, bg = palette.none })

-- Column where signs are displayed.
util.highlight("SignColumn", { fg = palette.none, bg = palette.none })

-- 'incsearch' highlighting; also used for the text replaced with ":s///c".
util.highlight("IncSearch", { fg = palette.black, bg = palette.bright_yellow, bold = true })

-- Line number for ":number" and ":#" commands, and when 'number' or
-- 'relativenumber' option is set.
util.highlight("LineNr", { fg = palette.bright_white, bg = palette.none })

-- Line number for when the 'relativenumber' option is set, above the cursor
-- line.
util.highlight("LineNrAbove", { fg = palette.none, bg = palette.none })

-- Line number for when the 'relativenumber' option is set, below the cursor
-- line.
util.highlight("LineNrBelow", { fg = palette.none, bg = palette.none })

-- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or
-- is "both", for the cursor line.
util.highlight("CursorLineNr", { fg = palette.black, bg = palette.bright_yellow, bold = true })

-- Like FoldColumn when 'cursorline' is set for the cursor line.
util.highlight("CursorLineFold", { fg = palette.none, bg = palette.none })

-- Like SignColumn when 'cursorline' is set for the cursor line.
util.highlight("CursorLineSign", { fg = palette.none, bg = palette.none })

-- Character under the cursor or just before it, if it is a paired bracket, and
-- its match.
util.highlight("MatchParen", { fg = palette.none, bg = palette.none })

-- Messages popup window used by :echowindow. If not defined hl-WarningMsg is
-- used.
util.highlight("MessageWindow", { fg = palette.none, bg = palette.none })

-- 'showmode' message (e.g., "-- INSERT --").
util.highlight("ModeMsg", { fg = palette.black, bg = palette.bright_yellow, bold = true })

-- Command-line area, also used for outputting messages, see also 'cmdheight'
util.highlight("MsgArea", { fg = palette.none, bg = palette.none })

-- |more-prompt|
util.highlight("MoreMsg", { fg = palette.none, bg = palette.none })

-- '@' at the end of the window, "<<<" at the start of the window for
-- 'smoothscroll', characters from 'showbreak' and other characters that do not
-- really exist in the text, such as the ">" displayed when a double-wide
-- character doesn't fit at the end of the line.
util.highlight("NonText", { fg = palette.none, bg = palette.none })

-- Normal text.
util.highlight("Normal", { fg = palette.bright_white, bg = palette.none })

-- Popup menu: Normal item.
util.highlight("Pmenu", { fg = palette.none, bg = palette.none })

-- Popup menu: Selected item.
util.highlight("PmenuSel", { fg = palette.bright_white, bg = palette.blue, bold = true })

-- Popup menu: Normal item "kind".
util.highlight("PmenuKind", { fg = palette.none, bg = palette.none })

-- Popup menu: Selected item "kind".
util.highlight("PmenuKindSel", { fg = palette.none, bg = palette.none })

-- Popup menu: Normal item "extra text".
util.highlight("PmenuExtra", { fg = palette.none, bg = palette.none })

-- Popup menu: Selected item "extra text".
util.highlight("PmenuExtraSel", { fg = palette.none, bg = palette.none })

-- Popup menu: Scrollbar.
util.highlight("PmenuSbar", { fg = palette.none, bg = palette.none })

-- Popup menu: Thumb of the scrollbar.
util.highlight("PmenuThumb", { fg = palette.none, bg = palette.none })

-- Popup menu: Matched text in normal item.
util.highlight("PmenuMatch", { fg = palette.none, bg = palette.none })

-- Popup menu: Matched text in selected item.
util.highlight("PmenuMatchSel", { fg = palette.none, bg = palette.none })

-- Popup window created with popup_notification(). If not defined hl-WarningMsg
-- is used.
util.highlight("PopupNotification", { fg = palette.none, bg = palette.none })

-- |hit-enter| prompt and yes/no questions.
util.highlight("Question", { fg = palette.none, bg = palette.none })

-- Current quickfix item in the quickfix window.
util.highlight("QuickFixLine", { fg = palette.none, bg = palette.none })

-- Last search pattern highlighting (see 'hlsearch'). Also used for highlighting
-- the current line in the quickfix window and similar items that need to stand
-- out.
util.highlight("Search", { fg = palette.black, bg = palette.bright_yellow, bold = true })

-- Current match for the last search pattern (see 'hlsearch'). Note: This is
-- correct after a search, but may get outdated if changes are made or the
-- screen is redrawn.
util.highlight("CurSearch", { fg = palette.bright_yellow, bg = palette.none, underline = true })

-- Meta and special keys listed with ":map", also for text used to show
-- unprintable characters in the text, 'listchars'. Generally: text that is
-- displayed differently from what it really is.
util.highlight("SpecialKey", { fg = palette.none, bg = palette.none })

-- Word that is not recognized by the spellchecker. |spell| This will be
-- combined with the highlighting used otherwise.
util.highlight("SpellBad", { fg = palette.none, bg = palette.none })

-- Word that should start with a capital. |spell| This will be combined with the
-- highlighting used otherwise.
util.highlight("SpellCap", { fg = palette.none, bg = palette.none })

-- Word that is recognized by the spellchecker as one that is used in another
-- region. |spell| This will be combined with the highlighting used otherwise.
util.highlight("SpellLocal", { fg = palette.none, bg = palette.none })

-- Word that is recognized by the spellchecker as one that is hardly ever used.
-- |spell| This will be combined with the highlighting used otherwise.
util.highlight("SpellRare", { fg = palette.none, bg = palette.none })

-- Status line of current window.
util.highlight("StatusLine", { fg = palette.bright_white, bg = palette.blue, bold = true })

-- status lines of not-current windows. Note: if this is equal to "StatusLine"
-- Vim will use "^^^" in the status line of the current window.
util.highlight("StatusLineNC", { fg = palette.bright_white, bg = palette.bright_black, bold = true })

-- Status line of current window, if it is a terminal window.
util.highlight("StatusLineTerm", { fg = palette.none, bg = palette.none })

-- Status lines of not-current windows that is a terminal window.
util.highlight("StatusLineTermNC", { fg = palette.none, bg = palette.none })

-- Tab pages line, not active tab page label.
util.highlight("TabLine", { fg = palette.none, bg = palette.none })

-- Tab pages line, where there are no labels.
util.highlight("TabLineFill", { fg = palette.none, bg = palette.none })

-- Tab pages line, active tab page label.
util.highlight("TabLineSel", { fg = palette.none, bg = palette.none })

-- Terminal window (see terminal-size-color).
util.highlight("Terminal", { fg = palette.none, bg = palette.none })

-- Titles for output from ":set all", ":autocmd" etc.
util.highlight("Title", { fg = palette.none, bg = palette.none })

-- Visual mode selection.
util.highlight("Visual", { fg = palette.black, bg = palette.bright_yellow, bold = true })

-- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's
-- |gui-x11| and |xterm-clipboard| supports this.
util.highlight("VisualNOS", { fg = palette.none, bg = palette.none })

-- Warning messages.
util.highlight("WarningMsg", { fg = palette.bright_white, bg = palette.red, bold = true })

-- Current match in 'wildmenu' completion.
util.highlight("WildMenu", { fg = palette.none, bg = palette.none })

-- Window bar of current window.
util.highlight("Winbar", { fg = palette.bright_white, bg = palette.blue, bold = true })

-- Window bar of not-current window.
util.highlight("WinbarNC", { fg = palette.bright_white, bg = palette.blue, bold = true })
