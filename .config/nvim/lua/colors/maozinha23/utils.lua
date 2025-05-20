local M = {}

--- Set highlight options for a given Vim highlight group.
-- @param group (string): Name of the highlight group to configure.
-- @param opts (table): Table of highlight options (e.g., fg, bg, bold, italic).
function M.highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

--- Creates a highlight link between two Vim highlight groups.
-- @param from_group (string): Name of the source highlight group.
-- @param to_group (string): Name of the target highlight group.
function M.link(from_group, to_group)
  vim.cmd(string.format("highlight! default link %s %s", from_group, to_group))
end

return M
