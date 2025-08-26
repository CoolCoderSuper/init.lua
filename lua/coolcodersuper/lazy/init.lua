return {
    'morhetz/gruvbox', 'maxmx03/fluoromachine.nvim', 'folke/tokyonight.nvim',
    'NeogitOrg/neogit', 'sindrets/diffview.nvim', 'mhinz/vim-signify', 'CoolCoderSuper/terminal.nvim',
    'CoolCoderSuper/make-runner.nvim',
    'nvim-tree/nvim-web-devicons', 'nvim-lualine/lualine.nvim', 'nvim-telescope/telescope-ui-select.nvim',
    'neovim/nvim-lspconfig', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'adelarsq/neofsharp.vim',
    'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip', 'CoolCoderSuper/vbnet.nvim', 'MonsieurTib/neonuget', 'stevearc/oil.nvim',
    'aznhe21/actions-preview.nvim', 'kosayoda/nvim-lightbulb', 'lewis6991/satellite.nvim', 'mbbill/undotree',
    'supermaven-inc/supermaven-nvim', 'Eandrju/cellular-automaton.nvim', --'nvim-treesitter/nvim-treesitter',
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
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
    },
    {
        'folke/which-key.nvim',
        opts = {
            preset = "helix"
        }
    },
    {
        'amrbashir/nvim-docs-view',
        cmd = "DocsViewToggle",
        opts = {
            position = "bottom",
        }
    },
    {
        "yutkat/confirm-quit.nvim",
        event = "CmdlineEnter",
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
                TODO = { icon = " ", color = "info" },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
            },
            merge_keywords = false
        }
    },
}
