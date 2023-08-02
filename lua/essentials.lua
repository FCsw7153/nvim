local option = vim.o
local global = vim.g

-- glabal setting
option.number = true
option.clipboard = "unnamed"
option.showmode = false
option.wrap = false
option.splitright = true

--keybindings
global.mapleader = " "
vim.keymap.set({ "n" }, "<C-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set({ "n" }, "<C-h>", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set({ "n" }, "<leader>bc", "<cmd>bd<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")

