return {
    'morhetz/gruvbox', 'NeogitOrg/neogit', 'sindrets/diffview.nvim', 'mhinz/vim-signify', 'zbirenbaum/copilot.lua',
    'nvim-tree/nvim-web-devicons', 'nvim-lualine/lualine.nvim', 'nvim-telescope/telescope-ui-select.nvim',
    'neovim/nvim-lspconfig', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'adelarsq/neofsharp.vim',
    'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip',
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
        "pianocomposer321/officer.nvim",
        dependencies = "stevearc/overseer.nvim",
        config = function()
            require("officer").setup {}
        end,
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    }
}
