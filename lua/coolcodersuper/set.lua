vim.cmd.colorscheme("gruvbox")
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.colorcolumn = "120"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

local builtin = require('telescope.builtin')
local opts = {}

vim.keymap.set('n', '<leader>yy', '"ayy', opts)
vim.keymap.set('n', '<leader>yp', '"ap', opts)

vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "D", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>ac", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, opts)
vim.keymap.set("n", "<leader>gr", builtin.lsp_references, opts)
vim.keymap.set("n", "<leader>gi", builtin.lsp_incoming_calls, opts)
vim.keymap.set("n", "<leader>go", builtin.lsp_outgoing_calls, opts)
vim.keymap.set("n", "<leader>ld", function()
    vim.lsp.buf.workspace_diagnostics()--TODO: wait for this to finish loading?
    builtin.diagnostics()
end, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>l", vim.lsp.buf.format, opts)

vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fm', builtin.marks)
vim.keymap.set('n', '<leader>fj', builtin.jumplist)
vim.keymap.set('n', '<leader>fr', builtin.registers)
vim.keymap.set('n', '<leader>fp', builtin.reloader)
vim.keymap.set('n', '<leader>fa', builtin.builtin)
vim.keymap.set('n', '<leader>fs', builtin.lsp_dynamic_workspace_symbols)
vim.keymap.set('n', '<leader>fds', builtin.lsp_document_symbols)

local neogit = require('neogit')
vim.keymap.set('n', '<leader>sc', neogit.open)

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        spacing = 2,
        source = "if_many",
    },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

require("vbnet").setup()
