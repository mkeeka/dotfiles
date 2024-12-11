return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},

	config = function()
		
		local highlight = {
    		"RainbowRed",
			"RainbowOrange",
    		"RainbowYellow",
    		"RainbowGreen",
    		"RainbowBlue",
    		"RainbowViolet",
    		"RainbowCyan",
		}

		local hooks = require "ibl.hooks"
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    		vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F38BA8" })
    		vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#FAB387" })
    		vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#F9E2AF" })
    		vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A6E3A1" })
    		vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#89DCEB" })
    		vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#89B4FA" })
    		vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#CBA6F7" })
		end)
	
		vim.g.rainbow_delimiters = { highlight = highlight }
		require("ibl").setup({ indent = {highlight = highlight }, scope = { highlight = highlight } })
	end
}
