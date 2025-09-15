-- Set Leader key
vim.g.mapleader = " "

-- Reload configuration
vim.keymap.set("n", "<Leader>r", function()
  require("utils.reload").reload_config()
end, { noremap = true, desc = "Reload config" })

-- Cycle through open buffers
vim.keymap.set("n", "<C-Tab>", "<CMD>bnext<CR>",
  { noremap = true , desc = "Next buffer" })
vim.keymap.set("n", "<C-S-Tab>", "<CMD>bprev<CR>",
  { noremap = true, desc = "Previous buffer" })

-- Inspect element under the cursor
vim.keymap.set("n", "<Leader>i", "<CMD>Inspect<CR>",
  { noremap = true , desc = "Inspect object" })

-- Close the current buffer
vim.keymap.set("n", "<Leader>D", "<CMD>bdelete<CR>",
  { noremap = true , desc = "Close buffer" })

-- Return to Normal mode in terminal
vim.keymap.set("t", "<C-S-n>", [[<C-\><C-n>]],
  { noremap = true , desc = "[TERM] Normal mode" })

 -- Resize window horizontal/vertical
window_resize_percent = 5
vim.keymap.set("n", "<Leader>w<Up>",
  "<CMD>resize +" .. window_resize_percent .. "<CR>",
  { noremap = true, desc = "Increase window height" })
vim.keymap.set("n", "<Leader>w<Down>",
  "<CMD>resize -" .. window_resize_percent .. "<CR>",
  { noremap = true, desc = "Decrease window height" })
vim.keymap.set("n", "<Leader>w<Right>",
  "<CMD>vertical resize +" .. window_resize_percent .. "<CR>",
  { noremap = true, desc = "Increase window width" })
vim.keymap.set("n", "<Leader>w<Left>",
  "<CMD>vertical resize -" .. window_resize_percent .. "<CR>",
  { noremap = true, desc = "Decrease window width" })

-- Quit
vim.keymap.set("n", "<Leader>q", "<CMD>quit<CR>",
  { noremap = true, desc = "Quit (only if no changes)" })

-- Plugins
-- lazy.nvim
vim.keymap.set("n", "<Leader>l", "<CMD>Lazy<CR>",
  { noremap = true, desc = "[lazy-nvim] Menu" })

-- fzf-lua
vim.keymap.set("n", "<Leader>fb", function()
    require('fzf-lua').buffers()
  end, { noremap = true, desc = "[fzf-lua] Search buffers" })
vim.keymap.set("n", "<Leader>ff", function()
    require('fzf-lua').files()
  end, { noremap = true, desc = "[fzf-lua] Search files (CWD)" })
vim.keymap.set("n", "<Leader>fg", function()
    require('fzf-lua').grep_curbuf()
  end, { noremap = true, desc = "[fzf-lua] Grep current buffer" })
vim.keymap.set("n", "<Leader>fG", function()
    require('fzf-lua').live_grep()
  end, { noremap = true, desc = "[fzf-lua] Grep (CWD)" })

-- oil.nvim
vim.keymap.set("n", "-",  "<CMD>Oil<CR>",
  { noremap = true, desc = "[oil.nvim] Open parent directory" })

-- mini.nvim
vim.keymap.set("n", "<Leader>t", function()
    require('mini.trailspace').trim()
  end, { noremap = true, desc = "[mini-trailspace] Trim trailing whitespace" })
vim.keymap.set("n", "<Leader>T", function()
    require('mini.trailspace').trim_last_lines()
  end, { noremap = true, desc = "[mini-trailspace] Trim last blank lines" })
