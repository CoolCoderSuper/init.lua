local harpoon = require("harpoon")
local tc = require("coolcodersuper.tc")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hl", function()
    local file_paths = {}
    for _, item in ipairs(harpoon:list().items) do
        table.insert(file_paths, item.value)
    end
    tc.toggle_telescope(file_paths, "Harpoon")
end)

for i = 1, 9 do
    vim.keymap.set('n', '<leader>a' .. i, function() harpoon:list():replace_at(i) end)
    vim.keymap.set('n', '<leader>h' .. i, function() harpoon:list():select(i) end)
    vim.keymap.set('n', '<leader>hv' .. i, function()
        vim.cmd('vsplit')
        vim.cmd('wincmd w')
        harpoon:list():select(i)
    end)
end
