-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

--clangd was manually installed with apt-get since it couldn't be found automatically for RPI
local machine = vim.loop.os_uname().machine
if machine == "aarch64" then
	lsp.configure('clangd', {force_setup = true})
end

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

-- This remaps commands only if a LSP buffer exists, otherwise use vim's default functionality
lsp.on_attach(function (client, bufnr)
	print("lsp attached")
	local opts = {buffer = bufnr, remap = false}

    local wk = require("which-key")

    wk.register({
        v = {
            -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            -- vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            -- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            name = "lsp",
            ws = { function() vim.lsp.buf.workspace_symbol() end, opts, "Workspace Symbol" }, 
            d = { function() vim.diagnostic.open_float() end, opts, "Open Float" }, 
            ca = { function() vim.lsp.buf.code_action() end, opts, "Code Action" }, 
            rr = { function() vim.lsp.buf.references() end, opts, "References" }, 
            rn = { function() vim.lsp.buf.rename() end, opts, "Rename" }, 
        },
    }, { prefix = "<leader>" })

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
