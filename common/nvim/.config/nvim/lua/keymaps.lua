vim.g.mapleader = " "

vim.keymap.set("n", "<Leader>r", function()
  require("utils.reload").reload_config()
end, { noremap = true })

vim.keymap.set("n", "<C-Tab>", "<cmd>bnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Tab>", "<cmd>bprev<CR>", { noremap = true })

vim.keymap.set("n", "<Leader>l", "<cmd>ls<CR>", { noremap = true })

vim.keymap.set("n", "<Leader>v", "<cmd>Vexplore<CR>", { noremap = true })

vim.keymap.set("n", "<Leader>q", "<cmd>quit<CR>", { noremap = true })
