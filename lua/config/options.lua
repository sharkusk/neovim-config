-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.backspace = "indent,eol,start"
vim.opt.history = 50
vim.opt.ruler = true
vim.opt.showcmd = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.cursorline = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- vim.opt.updatetime = 50

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

local undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undodir = undodir
if vim.fn.isdirectory(undodir) == 0 then
  print("Creating undodir " .. undodir)
  os.execute("mkdir -p " .. undodir)
end

vim.opt.termguicolors = true
