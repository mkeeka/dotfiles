return {
    'akinsho/bufferline.nvim',
    version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        separator = true,
                    }
                },
				diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " "
                            or (e == "warning" and " " or " ")
            				s = s .. n .. sym
                    end
                return s
            	end
        	},  
        	highlights = require("catppuccin.groups.integrations.bufferline").get()
        }
    end
}

