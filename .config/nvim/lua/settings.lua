-- Copy indent from current line when starting a new line
vim.opt.autoindent = true

-- Use the clipboard register * and/or + for yank, delete, change and put
-- operations
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })

-- List of screen columns that are highlighted
vim.opt.colorcolumn = "81"

-- Highlight the screen line of the cursor
vim.opt.cursorline = true

-- Use the appropriate number of spaces to insert a <Tab>
vim.opt.expandtab = true

-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = true

-- Ignore case in search patterns
vim.opt.ignorecase = true

-- While typing a search command, show where the pattern, as it was typed so far,
-- matches. The matched string is highlighted
vim.opt.incsearch = true

-- The value of this option influences when the last window will have a status
-- line:
--	 0: never
--	 1: only if there are at least two windows
--	 2: always
vim.opt.laststatus = 2

-- Enable the use of the mouse in all modes
vim.opt.mouse = "a"

-- If the 'wrap' option is off, long lines will not wrap
vim.opt.wrap = false

-- Show the line number relative to the line with the cursor in front of each
-- line
vim.opt.relativenumber = true

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2

-- Show (partial) command in the last line of the screen
vim.opt.showcmd = true

-- When a bracket is inserted, briefly jump to the matching one
vim.opt.showmatch = true

-- If in Insert, Replace or Visual mode put a message on the last line
vim.opt.showmode = true

-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters
vim.opt.smartcase = true

-- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.softtabstop = 2

-- Specify the content of the status line
vim.opt.statusline = "%m%r [Buffer:%n]%< [Tipo:%Y] %=%-.([Linha:%l / Coluna:%v]%) [Posição:%p%%]"

-- Number of spaces that a <Tab> in the file counts for
vim.opt.tabstop = 2

-- Uses highlight-guifg and highlight-guibg attributes in the terminal
vim.opt.termguicolors = true

-- Enable window bar and determine its contents
vim.opt.winbar = "%=%F%="
