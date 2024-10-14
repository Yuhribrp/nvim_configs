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

return {
{
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local cyberd = require("cyberdream")

    cyberd.setup({
      transparent = false,
      italic_comments = true,
      hide_fillchars = false,
      borderless_telescope = false,
      terminal_colors = true,
      cache = false,
      })
      vim.cmd([[colorscheme cyberdream]])
    end,
  },
}
