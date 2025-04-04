local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

for i = 1, 9 do
    vim.keymap.set('n', '<leader>h' .. i, function() harpoon:list():select(i) end)
    vim.keymap.set('n', '<leader>hv' .. i, function()
        vim.cmd('vsplit')
        harpoon:list():select(i)
    end)
end
