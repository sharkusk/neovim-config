local builtin = require('telescope.builtin')

local wk = require("which-key")

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
wk.register({
    p = {
        name = "telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find Files" }, 
        s = { function() builtin.grep_string({search=vim.fn.input("Grep > ") }) end, "Grep" }, 
    },
}, { prefix = "<leader>" })

vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Find in GIT Files"})
