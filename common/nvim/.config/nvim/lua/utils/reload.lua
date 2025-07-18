local M = {}

local modules_to_reload = {
  "config.keymaps",
  "config.neovide",
  "config.settings",
}

function M.reload_config()
  for _, module in ipairs(modules_to_reload) do
    package.loaded[module] = nil
  end

  dofile(vim.fn.stdpath("config") .. "/init.lua")
end

return M
