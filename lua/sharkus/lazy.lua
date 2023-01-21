local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { {'nvim-lua/plenary.nvim'} }},
    --{'sainnhe/everforest', name='everforest', config = function() vim.cmd('colorscheme everforest') end},
    --{'jnurmine/Zenburn', name='zenburn', config = function() vim.cmd('colorscheme zenburn') end},
    {'EdenEast/nightfox.nvim', name='nightfox', config = function() vim.cmd('colorscheme nordfox') end},
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'mbbill/undotree'},
    {'tpope/vim-fugitive'},
    {'VonHeikemen/lsp-zero.nvim',
    version = 'v1.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }},
    {'nvim-lualine/lualine.nvim',
    dependencies = {
        {'nvim-tree/nvim-web-devicons', opt = true}
    }},
    {'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons' }},
    {"folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }) end,
    },
})
