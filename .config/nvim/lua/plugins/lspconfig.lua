-- lspconfig.lua
return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
			
			-- Setup clangd for C/C++
            lspconfig.clangd.setup{
                on_attach = on_attach,
            }

            -- Setup pyright for Python
            lspconfig.pyright.setup{
                on_attach = on_attach,
            }
			
			-- Setup jdtls for Java
			lspconfig.jdtls.setup{
                on_attach = on_attach,
            }
        end,
    },
}

