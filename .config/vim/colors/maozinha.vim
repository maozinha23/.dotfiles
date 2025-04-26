" ctermfg | ctermbg:
" NR-16 NR-8  COLOR NAME
" 0     0     Black
" 1     4     DarkBlue
" 2     2     DarkGreen
" 3     6     DarkCyan
" 4     1     DarkRed
" 5     5     DarkMagenta
" 6     3     Brown, DarkYellow
" 7     7     LightGray, LightGrey, Gray, Grey
" 8     0*    DarkGray, DarkGrey
" 9     4*    Blue, LightBlue
" 10    2*    Green, LightGreen
" 11    6*    Cyan, LightCyan
" 12    1*    Red, LightRed
" 13    5*    Magenta, LightMagenta
" 14    3*    Yellow, LightYellow
" 15    7*    White

" cterm:
" bold | underline | undercurl | reverse | inverse | italic | standout | NONE

let g:colors_name="maozinha"

" highlight | hi
hi clear
"-------------------------------------------------------------------------------
" Any comment.
hi Comment              ctermfg=darkgray    ctermbg=NONE        cterm=italic
"-------------------------------------------------------------------------------
" Any constant.
hi Constant             ctermfg=white       ctermbg=NONE        cterm=NONE

" String constant: "this is a string"
hi link String Constant

" Character constant: 'c', '\n'
hi link Character Constant

" Number constant: 234, 0xff
hi link Number Constant

" Boolean constant: TRUE, false
hi link Boolean Constant

" Floating point constant: 2.3e10
hi link Float Constant
"-------------------------------------------------------------------------------
" Any variable name.
hi Identifier           ctermfg=blue        ctermbg=NONE        cterm=NONE

" Function name (also: methods for classes).
hi link Function Identifier
"-------------------------------------------------------------------------------
" Any statement.
hi Statement            ctermfg=darkblue    ctermbg=NONE        cterm=bold

" if, then, else, endif, switch, etc.
hi link Conditional Statement

" for, do, while, etc.
hi link Repeat Statement

" case, default, etc.
hi link Label Statement

" "sizeof", "+", "*", etc.
hi link Operator Statement

" Any other keyword.
hi link Keyword Statement

" try, catch, throw
hi link Exception Statement
"-------------------------------------------------------------------------------
" Generic Preprocessor.
hi PreProc              ctermfg=blue        ctermbg=NONE        cterm=bold

" Preprocessor #include
hi link Include PreProc

" Preprocessor #define
hi link Define PreProc

" Same as Define
hi link Macro PreProc

" Preprocessor #if, #else, #endif, etc.
hi link PreCondit PreProc
"-------------------------------------------------------------------------------
" int, long, char, etc.
hi Type                 ctermfg=blue        ctermbg=NONE        cterm=NONE

" static, register, volatile, etc.
hi link StorageClass Type

" struct, union, enum, etc.
hi link Structure Type

" A typedef
hi link Typedef Type
"-------------------------------------------------------------------------------
" Any special symbol.
hi Special              ctermfg=yellow      ctermbg=NONE        cterm=NONE

" Special character in a constant.
hi link SpecialChar Special

" You can use CTRL-] on this.
hi link Tag Special

" Character that needs attention.
hi link Delimiter Special

" Special things inside a comment.
hi link SpecialComment Special

" Debugging statements.
hi link Debug Special
"-------------------------------------------------------------------------------
" Text that stands out, HTML links.
hi Underlined           ctermfg=NONE        ctermbg=NONE        cterm=underline
"-------------------------------------------------------------------------------
" Left blank, hidden. |hl-Ignore|
hi Ignore               ctermfg=NONE        ctermbg=NONE        cterm=NONE
"-------------------------------------------------------------------------------
" Any erroneous construct.
hi Error                ctermfg=white       ctermbg=darkred     cterm=bold
"-------------------------------------------------------------------------------
" Anything that needs extra attention; mostly the keywords TODO FIXME and XXX.
hi Todo                 ctermfg=yellow      ctermbg=NONE        cterm=underline
"-------------------------------------------------------------------------------
" Added line in a diff.
hi Added                ctermfg=NONE        ctermbg=NONE        cterm=NONE
"-------------------------------------------------------------------------------
" Changed line in a diff.
hi Changed              ctermfg=NONE        ctermbg=NONE        cterm=NONE
"-------------------------------------------------------------------------------
" Removed line in a diff.
hi Removed              ctermfg=NONE        ctermbg=NONE        cterm=NONE
"-------------------------------------------------------------------------------
" Used for the columns set with 'colorcolumn'.
hi ColorColumn          ctermfg=white       ctermbg=darkred     cterm=bold

" Placeholder characters substituted for concealed text (see 'conceallevel').
hi Conceal              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Character under the cursor.
hi Cursor               ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Character under the cursor when language-mapping is used (see 'guicursor').
hi lCursor              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Like Cursor, but used when in IME mode. |CursorIM|
hi CursorIM             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Screen column that the cursor is in when 'cursorcolumn' is set.
hi CursorColumn         ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Screen line that the cursor is in when 'cursorline' is set.
hi CursorLine           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Directory names (and other special names in listings).
hi Directory            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Diff mode: Added line.
hi DiffAdd              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Diff mode: Changed line.
hi DiffChange           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Diff mode: Deleted line.
hi DiffDelete           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Diff mode: Changed text within a changed line.
hi DiffText             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Filler lines (~) after the last line in the buffer. By default, this is
" highlighted like hl-NonText.
hi EndOfBuffer          ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Error messages on the command line.
hi ErrorMsg             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Column separating vertically split windows.
hi VertSplit            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Line used for closed folds.
hi Folded               ctermfg=NONE        ctermbg=NONE        cterm=NONE

" 'foldcolumn'
hi FoldColumn           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Column where signs are displayed.
hi SignColumn           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" 'incsearch' highlighting; also used for the text replaced with ":s///c".
hi IncSearch            ctermfg=black       ctermbg=yellow      cterm=bold

" Line number for ":number" and ":#" commands, and when 'number' or
" 'relativenumber' option is set.
hi LineNr               ctermfg=white       ctermbg=NONE        cterm=NONE

" Line number for when the 'relativenumber' option is set, above the cursor
" line.
hi LineNrAbove          ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Line number for when the 'relativenumber' option is set, below the cursor
" line.
hi LineNrBelow          ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or
" is "both", for the cursor line.
hi CursorLineNr         ctermfg=black       ctermbg=yellow      cterm=bold

" Like FoldColumn when 'cursorline' is set for the cursor line.
hi CursorLineFold       ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Like SignColumn when 'cursorline' is set for the cursor line.
hi CursorLineSign       ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Character under the cursor or just before it, if it is a paired bracket, and
" its match.
hi MatchParen           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Messages popup window used by :echowindow. If not defined hl-WarningMsg is
" used.
hi MessageWindow        ctermfg=NONE        ctermbg=NONE        cterm=NONE

" 'showmode' message (e.g., "-- INSERT --").
hi ModeMsg              ctermfg=black       ctermbg=yellow      cterm=bold

" Command-line area, also used for outputting messages, see also 'cmdheight'
hi MsgArea              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" |more-prompt|
hi MoreMsg              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" '@' at the end of the window, "<<<" at the start of the window for
" 'smoothscroll', characters from 'showbreak' and other characters that do not
" really exist in the text, such as the ">" displayed when a double-wide
" character doesn't fit at the end of the line.
hi NonText              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Normal text.
hi Normal               ctermfg=white       ctermbg=NONE        cterm=NONE

" Popup menu: Normal item.
hi Pmenu                ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Selected item.
hi PmenuSel             ctermfg=white       ctermbg=darkblue    cterm=bold

" Popup menu: Normal item "kind".
hi PmenuKind            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Selected item "kind".
hi PmenuKindSel         ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Normal item "extra text".
hi PmenuExtra           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Selected item "extra text".
hi PmenuExtraSel        ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Scrollbar.
hi PmenuSbar            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Thumb of the scrollbar.
hi PmenuThumb           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Matched text in normal item.
hi PmenuMatch           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup menu: Matched text in selected item.
hi PmenuMatchSel        ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Popup window created with popup_notification(). If not defined hl-WarningMsg
" is used.
hi PopupNotification    ctermfg=NONE        ctermbg=NONE        cterm=NONE

" |hit-enter| prompt and yes/no questions.
hi Question             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Current quickfix item in the quickfix window.
hi QuickFixLine         ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Last search pattern highlighting (see 'hlsearch'). Also used for highlighting
" the current line in the quickfix window and similar items that need to stand
" out.
hi Search               ctermfg=black       ctermbg=yellow      cterm=bold

" Current match for the last search pattern (see 'hlsearch'). Note: This is
" correct after a search, but may get outdated if changes are made or the
" screen is redrawn.
hi CurSearch            ctermfg=yellow      ctermbg=NONE       cterm=underline

" Meta and special keys listed with ":map", also for text used to show
" unprintable characters in the text, 'listchars'. Generally: text that is
" displayed differently from what it really is.
hi SpecialKey           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Word that is not recognized by the spellchecker. |spell| This will be
" combined with the highlighting used otherwise.
hi SpellBad             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Word that should start with a capital. |spell| This will be combined with the
" highlighting used otherwise.
hi SpellCap             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Word that is recognized by the spellchecker as one that is used in another
" region. |spell| This will be combined with the highlighting used otherwise.
hi SpellLocal           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Word that is recognized by the spellchecker as one that is hardly ever used.
" |spell| This will be combined with the highlighting used otherwise.
hi SpellRare            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Status line of current window.
hi StatusLine           ctermfg=white       ctermbg=darkblue    cterm=bold

" status lines of not-current windows. Note: if this is equal to "StatusLine"
" Vim will use "^^^" in the status line of the current window.
hi StatusLineNC         ctermfg=white       ctermbg=darkgray    cterm=bold

" Status line of current window, if it is a terminal window.
hi StatusLineTerm       ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Status lines of not-current windows that is a terminal window.
hi StatusLineTermNC     ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Tab pages line, not active tab page label.
hi TabLine              ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Tab pages line, where there are no labels.
hi TabLineFill          ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Tab pages line, active tab page label.
hi TabLineSel           ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Terminal window (see terminal-size-color).
hi Terminal             ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Titles for output from ":set all", ":autocmd" etc.
hi Title                ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Visual mode selection.
hi Visual               ctermfg=black       ctermbg=yellow      cterm=bold

" Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's
" |gui-x11| and |xterm-clipboard| supports this.
hi VisualNOS            ctermfg=NONE        ctermbg=NONE        cterm=NONE

" Warning messages.
hi WarningMsg           ctermfg=white       ctermbg=darkred     cterm=bold

" Current match in 'wildmenu' completion.
hi WildMenu             ctermfg=NONE        ctermbg=NONE        cterm=NONE
