local M = {}

M.highlight = function(name, val)
  -- Force links
  val.force = true

  -- Make sure that "cterm" attribute is not populated from "gui"
  val.cterm = val.cterm or {} ---@type vim.api.keyset.highlight

  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

return M
