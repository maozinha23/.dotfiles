local M = {}

function M.highlight(name, val)
  -- Force links
  val.force = true

  -- Make sure that "cterm" attribute is not populated from "gui"
  val.cterm = val.cterm or {}

  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

return M
