-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- in visual mode, move highlighted blocks of text up and down using J,K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in center of screen when searching up and down
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep original buffer when pasting overwrite
vim.keymap.set("x", "<leader>p", '"_dP')

-- exit insert mode by pressing jk
vim.keymap.set("i", "jk", "<esc>")
