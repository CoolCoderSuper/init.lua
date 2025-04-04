require("mason").setup {}
require("mason-lspconfig").setup {}
require("copilot").setup {
    suggestion = {
        auto_trigger = true,
    }
}

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {}
lspconfig.fsautocomplete.setup {}
lspconfig.ts_ls.setup {}
lspconfig.lua_ls.setup {}

vim.lsp.config['vb_ls'] = {
    cmd = { [[C:\CodingCool\Code\Projects\visualbasic-language-server\src\VisualBasicLanguageServer\bin\Debug\net8.0\VisualBasicLanguageServer.exe]] },
    root_markers = { '*.sln', '.slnx', '*.vbproj' },
    filetypes = { 'vbnet' },
    init_options = {
        AutomaticWorkspaceInit = true,
    },
}

vim.lsp.enable('vb_ls')
