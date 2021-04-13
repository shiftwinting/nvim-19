local nvim_lsp = require'lspconfig'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.rust_analyzer.setup({
    on_attach = require'lsp'.common_on_attach,
    capabilities=capabilities,
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true,
        })
    },
})
