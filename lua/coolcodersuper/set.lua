local theme = "fluoromachine"
vim.cmd.colorscheme(theme)
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

vim.keymap.set('n', '<leader>w', '<C-w><C-w>', opts)

vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "D", vim.diagnostic.open_float, opts)
vim.keymap.set({ "v", "n" }, "<leader>ac", require("actions-preview").code_actions)
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, opts)
vim.keymap.set("n", "<leader>gr", builtin.lsp_references, opts)
vim.keymap.set("n", "<leader>gi", builtin.lsp_incoming_calls, opts)
vim.keymap.set("n", "<leader>go", builtin.lsp_outgoing_calls, opts)
vim.keymap.set("n", "<leader>ld", function()
    --vim.lsp.buf.workspace_diagnostics()--TODO: wait for this to finish loading?
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
vim.keymap.set('n', '<leader>fc', builtin.colorscheme)
vim.keymap.set('n', '<leader>fs', builtin.lsp_dynamic_workspace_symbols)
vim.keymap.set('n', '<leader>fds', builtin.lsp_document_symbols)

require('lualine').setup({
    options = {
        theme = theme
    }
})

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
require("neonuget").setup()

local oil = require("oil")
oil.setup({
    skip_confirm_for_simple_edits = true
})
vim.keymap.set('n', '<leader>od', oil.open)

vim.api.nvim_create_user_command("Sex", function(opts)
    if opts.bang then
        vim.cmd("vsplit")
        vim.cmd("Oil")
    else
        vim.cmd("split")
        vim.cmd("Oil")
    end
end, { bang = true })

require("nvim-lightbulb").setup({
    autocmd = { enabled = true }
})

vim.keymap.set('n', '<leader>k', function() vim.cmd("DocsViewToggle") end)

require('satellite').setup()

require("supermaven-nvim").setup({
    keymaps = {
        accept_suggestion = "<A-l>",
    },
})
