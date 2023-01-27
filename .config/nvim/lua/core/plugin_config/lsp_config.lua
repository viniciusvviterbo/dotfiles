require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "arduino_language_server",
        "bashls",
        "clangd",
        -- "csharp_ls",
        "clangd",
        "cssls",
        "dockerls",
        "eslint",
        -- "golangci_lint_ls",
        "html",
        "jsonls",
        "jdtls",
        "tsserver",
        "ltex",
        "sumneko_lua",
        "marksman",
        "jedi_language_server",
        "rust_analyzer",
        "sqlls",
    }
})

local on_attach = function(_, bufnr)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin'), {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").sumneko_lua.setup {
    on_attach = on_attach
}

