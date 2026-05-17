local M = {
  MSG_BUFFER_CLOSE = "Close buffer? Unsaved changes will be lost!",
  MSG_RESTART = "Restart Neovim? Unsaved changes will be lost!",
  MSG_SEARCH_REPLACE = "Replace the selected text with: ",
  PROMPT_YES_NO = "&Yes\n&No",
  PROMPT_OPTION_NO = 2,
  PROMPT_OPTION_YES = 1,
  SESSION_TEMP = "/tmp/neovim-session.vim",
}

-- Close the current buffer. Ask for confirmation if is modified
function M.close_buffer()
  if vim.bo.modified then
    local choice = vim.fn.confirm(M.MSG_BUFFER_CLOSE, M.PROMPT_YES_NO)

    if choice ~= M.PROMPT_OPTION_YES then
      return
    end
  end

  -- If there are multiple buffers, change to the previous buffer before closing
  local buffers = #vim.fn.getbufinfo({buflisted = true})

  if buffers == 1 then
    vim.cmd("bdelete!")
  elseif buffers > 1 then
    vim.cmd("bprevious | bdelete! #")
  end
end

-- Restart Neovim with the same session
function M.restart()
  local choice = vim.fn.confirm(M.MSG_RESTART, M.PROMPT_YES_NO)

  if choice == M.PROMPT_OPTION_YES then
    vim.cmd("mksession! " .. M.SESSION_TEMP ..
      " | restart +quitall! source " .. M.SESSION_TEMP)
  end
end

-- Search and replace the selected text
function M.search_and_replace()
  -- Use the "s" register to copy the selected text
  vim.cmd('normal! "sy')

  local search = vim.fn.getreg("s")
  search = vim.fn.escape(search, "/\\")

  local replace = vim.fn.input(M.MSG_SEARCH_REPLACE)
  replace = vim.fn.escape(replace, "/\\&~")

  vim.cmd("%substitute/\\V" .. search .. "/" .. replace .. "/gc")
  vim.cmd("nohlsearch")
end

return M
