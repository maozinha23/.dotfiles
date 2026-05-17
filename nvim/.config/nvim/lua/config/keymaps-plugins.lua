-- -----------------------------------------------------------------------------
-- mason
-- -----------------------------------------------------------------------------
-- Open mason UI
vim.keymap.set(
  "n",
  "<M-m>",
  "<CMD>Mason<CR>",
  { noremap = true, desc = "[mason] Open mason" })
-- -----------------------------------------------------------------------------
-- mini
-- -----------------------------------------------------------------------------
-- Search files for keywords using ripgrep
vim.keymap.set(
  "n",
  "<Leader>fg",
  "<CMD>Pick grep_live<CR>",
  { noremap = true, desc = "[mini.pick] Grep" })

-- Search open buffers
vim.keymap.set(
  "n",
  "<Leader>fb",
  "<CMD>Pick buffers<CR>",
  { noremap = true, desc = "[mini.pick] Buffers" })

-- Search filenames using ripgrep
vim.keymap.set(
  "n",
  "<Leader>ff",
  "<CMD>Pick files tool='rg'<CR>",
  { noremap = true, desc = "[mini.pick] Files (CWD)" })

-- Trim whitespace
vim.keymap.set(
  "n",
  "<Leader>t",
  "<CMD>lua MiniTrailspace.trim()<CR>",
  { noremap = true, desc = "[mini.trailspace] Trim trailing whitespace" })

vim.keymap.set(
  "n",
  "<Leader>T",
  "<CMD>lua MiniTrailspace.trim_last_lines()<CR>",
  { noremap = true, desc = "[mini.trailspace] Trim last blank lines" })
-- -----------------------------------------------------------------------------
-- oil
-- -----------------------------------------------------------------------------
-- Open oil buffer
vim.keymap.set(
  "n",
  "-",
  "<CMD>Oil<CR>",
  { noremap = true, desc = "[oil.nvim] Open parent directory" })
-- -----------------------------------------------------------------------------
-- undotree
-- -----------------------------------------------------------------------------
-- Toggle undotree
vim.keymap.set(
  "n",
  "<Leader>u",
  "<CMD>Undotree<CR>",
  { noremap = true, desc = "[builtin] Toggle undotree" })
