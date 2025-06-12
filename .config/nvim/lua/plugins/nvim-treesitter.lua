return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Ensures parsers are updated after installing the plugin
    config = function()
        require("nvim-treesitter.configs").setup({
            -- List of parsers to install or set to "all"
            ensure_installed = {},
            -- Enable automatic installation of parsers
            auto_install = true,
            -- Highlighting options
            highlight = {
                enable = true, -- Enable Treesitter-based syntax highlighting
                -- additional_vim_regex_highlighting = false, -- Avoid default regex-based highlighting
            },
            -- Indentation settings
            indent = {
                enable = true, -- Enable Treesitter-based indentation
            },
        })
    end,
}

