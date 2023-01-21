vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua (strongly advised for nvim tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("sharkus.lazy")
require("sharkus.set")
require("sharkus.remap")
