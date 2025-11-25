return {
	{
		"tpope/vim-fugitive",
		vim.keymap.set("n", "<leader>gs", ":Git status<CR>", {}),
		vim.keymap.set("n", "<leader>gl", ":Git log --oneline<CR>", {}),
		vim.keymap.set("n", "<leader>gdiff", ":Git diff<CR>", {}),
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
			vim.keymap.set("n", "<leader>gdf", ":Gitsigns diffthis<CR>", {})
		end,
	},
}
