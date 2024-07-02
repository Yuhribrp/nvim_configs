return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme tokyonight-night]])
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local catp = require("catppuccin")

			catp.setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					-- light = "latte",
					dark = "mocha",
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					barbar = true,
				},
			})
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
