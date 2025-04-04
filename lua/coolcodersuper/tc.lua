local telescope = require('telescope')
local open_with_trouble = require("trouble.sources.telescope").open
-- TODO: replace ui.select with telescope, and quickfix list?
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

local conf = require("telescope.config").values
local function toggle_telescope(files, title)
    require("telescope.pickers").new({}, {
        prompt_title = title,
        finder = require("telescope.finders").new_table({
            results = files,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

return {
    toggle_telescope = toggle_telescope,
}
