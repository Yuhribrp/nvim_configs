return {
  "olexsmir/gopher.nvim",
  ft = "go",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("gopher").setup {
      log_level = vim.log.levels.INFO,
      timeout = 2000,
      commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        gotests = "gotests",
        impl = "impl",
        iferr = "iferr",
      },
      gotests = {
        template = "default",
        template_dir = nil,
        named = false,
      },
      gotag = {
        transform = "snakecase",
        default_tag = "json",
      },
      iferr = {
        message = nil,
      },
    }

    local opts = { noremap = true, silent = true }

    -- Gopher commands
    vim.api.nvim_set_keymap("n", "<Leader>gm", "<cmd>lua require('gopher').gomodifytags()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>gf", "<cmd>lua require('gopher').fmt()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>gti", "<cmd>lua require('gopher').impl()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>gtierr", "<cmd>lua require('gopher').iferr()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>gtt", "<cmd>lua require('gopher').gotests()<CR>", opts)

    -- GO main commands
    vim.api.nvim_set_keymap("n", "<Leader>gr", ":!go run %<CR>", opts) -- Go Run arquivo atual
    vim.api.nvim_set_keymap("n", "<Leader>gt", ":!go test %<CR>", opts) -- Go Test arquivo atual
    vim.api.nvim_set_keymap("n", "<Leader>gb", ":!go build %<CR>", opts) -- Go Build arquivo atual
    vim.api.nvim_set_keymap("n", "<Leader>gi", ":!go mod tidy<CR>", opts) -- Go Install Deps / Tidy
  end,
}
