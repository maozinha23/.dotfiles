-- Set Leader key
vim.g.mapleader = " "

-- Reload configuration
vim.keymap.set("n", "<Leader>r", function()
  require("utils.reload").reload_config()
end, { noremap = true })

-- Cycle through open buffers
vim.keymap.set("n", "<C-Tab>", "<cmd>bnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Tab>", "<cmd>bprev<CR>", { noremap = true })

-- List open buffers
vim.keymap.set("n", "<Leader>l", "<cmd>ls<CR>", { noremap = true })

-- Open Netrw in a vertical split
vim.keymap.set("n", "<Leader>v", "<cmd>Vexplore<CR>", { noremap = true })

-- Move line up/down
vim.keymap.set("n", "<Leader><Up>", "<cmd>move -2<CR>", { noremap = true })
vim.keymap.set("n", "<Leader><Down>", "<cmd>move +1<CR>", { noremap = true })

-- Quit
vim.keymap.set("n", "<Leader>q", "<cmd>quit<CR>", { noremap = true })
