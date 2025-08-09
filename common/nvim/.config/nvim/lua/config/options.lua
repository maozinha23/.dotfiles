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

-- While typing a search command, show where the pattern, as it was typed so
-- far, matches. The matched string is highlighted
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

-- If in Insert, Replace or Visual mode put a message on the last line.
vim.opt.showmode = false

-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters
vim.opt.smartcase = true

-- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.softtabstop = 2

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

vim.opt.statusline = "%m%r [Mode:%{mode_map[mode()]}]%< [Type:%Y] %=%-.([Line:%l / Column:%v]%) [Position:%p%%]"

-- Number of spaces that a <Tab> in the file counts for
vim.opt.tabstop = 2

-- Uses highlight-guifg and highlight-guibg attributes in the terminal
vim.opt.termguicolors = true

-- Enable window bar and determine its contents
vim.opt.winbar = "%=%F%="

-- Defines the default border style of floating windows
vim.o.winborder = "single"
