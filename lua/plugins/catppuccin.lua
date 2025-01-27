-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			local catp = require("catppuccin")

-- 			catp.setup({
-- 				flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 				background = { -- :h background
-- 					-- light = "latte",
-- 					dark = "mocha",
-- 				},
-- 				integrations = {
-- 					cmp = true,
-- 					gitsigns = true,
-- 					nvimtree = true,
-- 					treesitter = true,
-- 					notify = true,
-- 					barbar = true,
-- 				},
-- 			})
-- 			vim.cmd([[colorscheme catppuccin]])
-- 		end,
-- 	},
-- }
--

-- return {
-- {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     local cyberd = require("cyberdream")

--     cyberd.setup({
--       transparent = false,
--       italic_comments = true,
--       hide_fillchars = false,
--       borderless_telescope = false,
--       terminal_colors = true,
--       cache = false,
--       })
--       vim.cmd([[colorscheme cyberdream]])
--     end,
--   },
-- }

-- return {
-- 	{
-- 		"rebelot/kanagawa.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			local kanagawa = require("kanagawa")

-- 			kanagawa.setup({
-- 				transparent = false,
-- 				commentStyle = { italic = true },
-- 				terminalColors = true,
-- 				theme = "dragon", -- lotus -- dragon -- wave
-- 			  background = {
--           dark = "dragon",
--           light = 'dragon'
--         },
--       })
-- 			vim.cmd([[colorscheme kanagawa]])
-- 		end,
-- 	},
-- }

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local tokyo = require("tokyonight")

			tokyo.setup({
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },

        lualine_bold = false,
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
