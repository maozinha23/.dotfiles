-- Copy indent from current line when starting a new line
vim.opt.autoindent = true

-- Use the clipboard register * and/or + for yank, delete, change and put
-- operations
if vim.env.XDG_SESSION_TYPE == "x11" or
  vim.env.XDG_SESSION_TYPE == "wayland" then

  vim.opt.clipboard = "unnamedplus"
end

-- List of screen columns that are highlighted
vim.opt.colorcolumn = "81"

-- List of options for Insert mode completion
vim.opt.completeopt = "menuone,noselect,popup"

-- Highlight the screen line of the cursor
vim.opt.cursorline = true

-- Use the appropriate number of spaces to insert a <Tab>
vim.opt.expandtab = true

-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = true

-- Ignore case in search patterns
vim.opt.ignorecase = true

-- While typing a search command, show where the pattern, as it was typed so
-- far, matches. The matched string is highlighted
vim.opt.incsearch = true

-- The value of this option influences when the last window will have a status
-- line:
--   0: never
--   1: only if there are at least two windows
--   2: always
--   3: always and ONLY the last window
vim.opt.laststatus = 2

-- List mode. Useful to see the difference between tabs and spaces and for
-- trailing blanks
vim.opt.list = true

-- Strings to use in 'list' mode
vim.opt.listchars = { tab = "→→", trail = " " }

-- Enable the use of the mouse in all modes
vim.opt.mouse = "a"

-- Define the default border style of popupmenu windows
vim.opt.pumborder = "single"

-- Show the line number relative to the line with the cursor in front of each
-- line
vim.opt.relativenumber = true

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2

-- Dont't give intro message when starting Neovim
vim.opt.shortmess:append("I")

-- Show (partial) command in the last line of the screen
vim.opt.showcmd = true

-- When a bracket is inserted, briefly jump to the matching one
vim.opt.showmatch = true

-- If in Insert, Replace or Visual mode put a message on the last line.
vim.opt.showmode = false

-- The value of this option specifies when the line with tab page labels will be
-- displayed:
--   0: never
--   1: only if there are at least two tab pages
--   2: always
vim.opt.showtabline = 2

-- When and how to draw the signcolumn
vim.opt.signcolumn = "number"

-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters
vim.opt.smartcase = true

-- When on, splitting a window will put the new window below the current one
vim.opt.splitbelow = true

-- When on, splitting a window will put the new window right of the current one
vim.opt.splitright = true

-- Specify the content of the status line
vim.g.mode_map = {
    n = 'Normal',
    no = 'Operator-pending',
    nov = 'Operator-pending',
    noV = 'Operator-pending',
    ['no' .. vim.fn.nr2char(22)] = 'Operator-pending', -- noCTRL-V
    niI = 'Normal',
    niR = 'Normal',
    niV = 'Normal',
    nt = 'Normal',
    ntT = 'Normal',
    v = 'Visual',
    vs = 'Visual',
    V = 'V-Line',
    Vs = 'V-Line',
    [vim.fn.nr2char(22)] = 'V-Block', -- CTRL-V
    [vim.fn.nr2char(22) .. 's'] = 'V-Block', -- CTRL-Vs
    s = 'Select',
    S = 'S-Line',
    [vim.fn.nr2char(19)] = 'S-Block', -- CTRL-Vs
    i = 'Insert',
    ic = 'Insert',
    ix = 'Insert',
    R = 'Replace',
    Rc = 'Replace',
    Rx = 'Replace',
    Rv = 'V-Replace',
    Rvc = 'V-Replace',
    Rvx = 'V-Replace',
    c = 'Command',
    cr = 'Command',
    cv = 'Vim Ex',
    cvr = 'Vim Ex',
    r = 'Prompt',
    rm = 'More',
    ['r?'] = 'Confirm',
    ['!'] = 'Shell',
    t = 'Terminal',
}

vim.opt.statusline =
  "%{&modified ? '[ + ] ' : ''}" ..
  "%{(&readonly || !filewritable(expand('%'))) ? '[ RO ] ' : ''}" ..
  "[ %{toupper(mode_map[mode()])} ]%< " ..
  "%{toupper(&filetype != '' ? '[ ' .. &filetype .. ' ] ' : '')}" ..
  "[ %{toupper(&fileencoding != '' ? &fileencoding : &encoding)} ] " ..
  "%=%-.([ LN:%l | COL:%v ]%) " ..
  "[ %p%% ]"

-- Number of spaces that a <Tab> in the file counts for
vim.opt.tabstop = 2

-- Uses highlight-guifg and highlight-guibg attributes in the terminal
vim.opt.termguicolors = false

-- The title of the window will be set to the value of 'titlestring'
vim.opt.title = true

-- Used for the title of the window
vim.opt.titlestring = "nvim - %t"

-- Save undo history to an undo file
vim.opt.undofile = true

-- Enable window bar and determine its contents
vim.opt.winbar = "%=%F%="

-- Defines the default border style of floating windows
vim.opt.winborder = "single"

-- If the 'wrap' option is off, long lines will not wrap
vim.opt.wrap = false
