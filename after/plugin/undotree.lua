local wk = require("which-key")
wk.register({
    -- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    u = { "<cmd>UndotreeToggle<cr>", "Toggle Undo Tree" }, 
}, { prefix = "<leader>" })
