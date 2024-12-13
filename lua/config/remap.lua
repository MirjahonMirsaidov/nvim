vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

