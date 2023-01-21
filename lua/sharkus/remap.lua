local wk = require("which-key")

wk.register({
    --vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
    n = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree"},
    -- keep cursor in current position when joining lines with J
    -- vim.keymap.set("n", "J", "mzJ`z")
    J = { "mzJ`z", "Join line without moving cursor"},
}, { prefix = "<leader>" })

-- in visual mode, move highlighted blocks of text up and down using J,K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor stays in middle of screen when jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in center of screen when searching up and down
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep original buffer when pasting overwrite
vim.keymap.set("x", "<leader>p", "\"_dP")

-- exit insert mode by pressing jk
vim.keymap.set("i", "jk", "<esc>")
