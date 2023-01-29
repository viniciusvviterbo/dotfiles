local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- My plugins here
    use 'Mofiqul/vscode.nvim' -- VSCode colorscheme
    use 'nvim-tree/nvim-tree.lua' -- File explorer
    use 'nvim-tree/nvim-web-devicons' -- Adds file icons to file explorer
    use 'nvim-lualine/lualine.nvim' -- Status line
    use 'nvim-treesitter/nvim-treesitter' -- Nvim treesitter configurations and abstraction layer
    use { -- Package manager for LSP servers, DAP servers, linters and formatters
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use { -- Extensible fuzzy finder over lists
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
	use 'hrsh7th/nvim-cmp' -- The completion plugin
	use 'hrsh7th/cmp-buffer' -- buffer completions
	use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-nvim-lsp' -- LSP completions
	use 'akinsho/bufferline.nvim' -- Buffer line/tab page integration
	use 'famiu/bufdelete.nvim' -- Buffer tab deletion without losing window layout
	use 'folke/which-key.nvim' -- Displays pop-up with possible keybindings
	use 'windwp/nvim-autopairs' -- Automatically complete enclosure characters such as (), [] and {}. It integrates with cmp and treesitter 

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)
