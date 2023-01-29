require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "arduino",
        "bash",
        "c",
        "c_sharp",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "go",
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "python",
        "regex",
        "rust",
        "scss",
        "sql",
        "typescript",
        "vim",
        "yaml" },
	autopairs = {
		enabled = true
	},
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
