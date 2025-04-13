-- lspconfig.lua
return {
    {
        "neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
        config = function()
            local lspconfig = require("lspconfig")
    		local ensure_installed = { "clangd", "pyright", "jdtls" }
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = ensure_installed
			})

			for _, server in ipairs(ensure_installed) do
				vim.lsp.enable(server)
			end
        end,
    },
}

