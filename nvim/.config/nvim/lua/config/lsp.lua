vim.lsp.enable({
  "bashls", -- Bash
  "clangd", -- C, C++
  "lua_ls", -- Lua
  "pyright", -- Python
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
