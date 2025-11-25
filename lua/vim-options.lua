vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 1 then
	vim.api.nvim_create_autocmd("TextYankPost", {
		group = vim.api.nvim_create_augroup("Yank", { clear = true }),
		callback = function()
			vim.fn.system("clip.exe", vim.fn.getreg('"'))
		end,
	})
end


-- vim.api.nvim_create_augroup("nobg", { clear = true })
-- vim.api.nvim_create_autocmd({ "ColorScheme" }, {
--   desc = "Tornar todos os fundos transparentes",
--   group = "nobg",
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
--     vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
--     vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
--   end,
-- })
