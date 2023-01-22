-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under config.plugins will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
--require("lspconfig").clangd.setup({})
local machine = vim.loop.os_uname().machine
if machine == "aarch64" then
    return {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                clangd = { mason = false },
            },
        },
    }
else
    return {}
end
