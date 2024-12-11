return { 
    "catppuccin/nvim",
	opts = {
		nvimtree = true,
		mason = true,
		copilot_vim = true,
		treesitter = true,
		treesitter_context = true,
		gitsigns = true,
		indent_blankline = {
    		enabled = true,
    		scope_color = "mauve", -- catppuccin color (eg. `lavender`) Default: text
    		colored_indent_levels = true,
		},
		native_lsp = {
    		enabled = true,
    		virtual_text = {
				errors = { "italic" },
    			hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
    			ok = { "italic" },
    		},
    		underlines = {
    			errors = { "underline" },
	    		hints = { "underline" },
	    		warnings = { "underline" },
	    		information = { "underline" },
				ok = { "underline" },
    		},
    		inlay_hints = {
    			background = true,
    		},
		},
	},
    name = "catppuccin", 
    priority = 1000,
    config = function()
		require("catppuccin").setup({
			flavour = "mocha",
		})
		vim.cmd.colorscheme "catppuccin"
	end,
}
