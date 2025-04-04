local telescope = require('telescope')
local open_with_trouble = require("trouble.sources.telescope").open

telescope.setup({
    defaults = {
        mappings = {
            i = { ["<c-t>"] = open_with_trouble },
            n = { ["<c-t>"] = open_with_trouble },
        },
    },
})

telescope.load_extension "file_browser"
vim.keymap.set('n', '<leader>fe', telescope.extensions.file_browser.file_browser)
