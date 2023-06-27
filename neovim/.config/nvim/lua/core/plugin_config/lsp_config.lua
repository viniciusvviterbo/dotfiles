servers = {
	"arduino_language_server",
	"bashls",
	"clangd",
	-- "csharp_ls",
	"clangd",
	"cssls",
	"dockerls",
	"eslint",
	-- "golangci_lint_ls",
	"gopls",
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

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true
})

local on_attach = function(_, bufnr)
	vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin'), {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").jedi_language_server.setup {
	on_attach = on_attach
}

require("lspconfig").sumneko_lua.setup {
	on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup {
	on_attach = on_attach
}

require("lspconfig").gopls.setup {}
