
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, {desc = "Toggle NvimTree"})
vim.keymap.set("n", "J", "mzJ`z", {desc = "Join"}) -- keep current cursor position

-- in visual mode, move highlighted blocks of text up and down using J,K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move Block Up"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move Block Down"})

-- cursor stays in middle of screen when jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Scroll Down"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Scroll Up"})

-- keep cursor in center of screen when searching up and down
vim.keymap.set("n", "n", "nzzzv", {desc = "Search Down"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Search Up"})

-- keep original buffer when pasting overwrite
vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste (keep buf)"})

-- exit insert mode by pressing jk
vim.keymap.set("i", "jk", "<esc>", {desc = "Exit Insert Mode"})
