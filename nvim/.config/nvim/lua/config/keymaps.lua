local utils = require("config.keymaps-utils")

-- Set Leader key
vim.g.mapleader = " "
-- -----------------------------------------------------------------------------
-- Close the current buffer
vim.keymap.set(
  "n",
  "<Leader>d",
  function()
    utils.close_buffer()
  end,
  { noremap = true, desc = "Close buffer" })

-- Close the current window
vim.keymap.set(
  "n",
  "<Leader>q",
  "<CMD>confirm quit<CR>",
  { noremap = true, desc = "Close window" })

-- Complete the text using omni completion
vim.keymap.set(
  "i",
  "<M-c>",
  "<C-x><C-o>",
  { noremap = true, desc = "Omni completion" })

-- Cycle through open buffers
vim.keymap.set(
  "n",
  "<Leader><Right>",
  "<CMD>bnext<CR>",
  { noremap = true, desc = "Next buffer" })

vim.keymap.set(
  "n",
  "<Leader><Left>",
  "<CMD>bprevious<CR>",
  { noremap = true, desc = "Previous buffer" })

-- Inspect element under the cursor
vim.keymap.set(
  "n",
  "<Leader>i",
  "<CMD>Inspect<CR>",
  { noremap = true, desc = "Inspect object" })

-- Paste from yank register
vim.keymap.set(
  {"n", "v"},
  "<Leader>p",
  '"0p',
  { noremap = true, desc = "Paste from reg 0 (after cursor)" })

vim.keymap.set(
  {"n", "v"},
  "<Leader>P",
  '"0P',
  { noremap = true, desc = "Paste from reg 0 (before cursor)" })

-- Quit Neovim
vim.keymap.set(
  "n",
  "<Leader>Q",
  "<CMD>confirm quitall<CR>",
  { noremap = true, desc = "Quit Neovim" })

-- Restart Neovim
vim.keymap.set(
  "n",
  "<Leader>r",
  function()
    utils.restart()
  end,
  { noremap = true, desc = "Restart Neovim" })

-- Return to Normal mode in terminal
vim.keymap.set(
  "t",
  "<C-S-n>",
  [[<C-\><C-n>]],
  { noremap = true, desc = "[TERM] Normal mode" })

-- Search and replace
vim.keymap.set(
  "v",
  "<Leader>/",
  function()
    utils.search_and_replace()
  end,
  { noremap = true, desc = "Search and replace" })

-- Set the current working directory to the same as the current file's
vim.keymap.set(
  "n",
  "<Leader>cd",
  "<CMD>cd %:p:h<CR>",
  { noremap = true, desc = "Set CWD to current file's dir" })

-- Sort lines
vim.keymap.set(
  "v",
  "<Leader>s",
  ":'<,'>sort<CR>",
  { noremap = true, desc = "Sort selection" })

-- Update plugins
vim.keymap.set(
  "n",
  "<M-u>",
  "<CMD>lua vim.pack.update()<CR>",
  { noremap = true, desc = "Update plugins" })
-- -----------------------------------------------------------------------------
-- Plugins
-- -----------------------------------------------------------------------------
require("config.keymaps-plugins")
