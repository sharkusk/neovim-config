local wk = require("which-key")

wk.register({
    --vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
    g = {
        name = "Git",
        s = { "<cmd>Git<cr>", "Open Git summary window"},
    }
}, { prefix = "<leader>" })
