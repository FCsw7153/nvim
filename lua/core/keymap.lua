vim.g.mapleader = " "

-- vim.keymap.set(mode, lhs, rhs, opts)
vim.keymap.set({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>", { silent = true })
