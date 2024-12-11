return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup {
    		options = {
        		theme = "catppuccin", -- Set catppuccin theme for lualine
        		component_separators = "|",
        		section_separators = "",
        		icons_enabled = true, -- Enable icons
    		},
			sections = {
        		lualine_a = { "mode" },
        		lualine_b = { "branch", "diff", "diagnostics" },
        		lualine_c = { "filename" },
        		lualine_x = { "encoding2", "fileformat", "filetype" },
        		lualine_y = { "progress" },
        		lualine_z = { "location" },
			};
    	}
	end
}

