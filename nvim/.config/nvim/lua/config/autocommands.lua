-- Open "help" and "man" buffers in a vertical split
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "man" },
  callback = function()
    -- Move the current window to be at the far right, using the full height of
    -- the screen
    vim.cmd("wincmd L")
  end,
})

-- Apply a highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank({
      higroup = "IncSearch",
      timeout = 500,
    })
  end,
})

-- Disable treesitter highlight
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "*",
  callback = function()
    vim.treesitter.stop()
  end,
})
