--require("lspconfig").clangd.setup({})
local machine = vim.loop.os_uname().machine
if machine == "aarch64" then
  return {
    {
      "neovim/nvim-lspconfig",
      ---@class PluginLspOpts
      opts = {
        setup = {
          require("lspconfig").clangd.setup({}),
        },
      },
    },
  }
else
  return {}
end
