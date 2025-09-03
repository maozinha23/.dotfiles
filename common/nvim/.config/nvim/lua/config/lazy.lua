local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins.fzf-lua" },
    -- { import = "plugins.mini-completion" },
    { import = "plugins.mini-move" },
    -- { import = "plugins.mini-snippets" },
    { import = "plugins.mini-surround" },
    { import = "plugins.mini-trailspace" },
    { import = "plugins.oil" },
  },

  rocks = {
      enabled = false,
  },

  checker = {
    enabled = true,
  },

  ui = {
    border = "single",
  },
})
