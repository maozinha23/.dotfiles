local M = {}

local modules = {
  -- Internal
  "builtin",
  "syntax",
  "diagnostic",
  -- "treesitter",
  -- "lsp",
  -- "lsp-semantic",

  -- Plugins
  "mini",
  "oil",
}

local THEME_PATH = "colorschemes.vgacolors"

function M.highlight(group, options)
  -- Force links
  options.force = true

  -- Make sure that "cterm" attribute is not populated from "gui"
  options.cterm = options.cterm or {}

  -- Define global highlight
  vim.api.nvim_set_hl(0, group, options)
end

function M.load_groups()
  local palette = require(THEME_PATH .. ".palette")
  local groups = {}

  for _, module in ipairs(modules) do
    local success, data = pcall(require, THEME_PATH .. ".modules." .. module)

    if success then
      groups = vim.tbl_extend("force", groups, data(palette))
    end
  end

  return groups
end

function M.setup()
  vim.cmd.highlight("clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "vgacolors"

  local groups = M.load_groups()

  for group, options in pairs(groups) do
    M.highlight(group, options)
  end
end

return M
