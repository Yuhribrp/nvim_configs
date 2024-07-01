return {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "williamboman/mason.nvim", -- Required, automatically installs omnisharp
    "Tastyep/structlog.nvim", -- Optional, but highly recommended for debugging
  },
  config = function()
    require("mason").setup() -- Mason setup must run before csharp
    require("csharp").setup()

    local csharp = require("csharp")

    vim.api.nvim_create_user_command("DebugProject", function()
      csharp.debug_project()
    end, {})

    vim.api.nvim_create_user_command("RunProject", function()
      csharp.run_project()
    end, {})

    vim.api.nvim_create_user_command("FixUsings", function()
      csharp.fix_usings()
    end, {})

    vim.api.nvim_create_user_command("FixAll", function()
      csharp.fix_all()
    end, {})

    vim.api.nvim_create_user_command("GoToDefinition", function()
      csharp.go_to_definition()
    end, {})

    vim.api.nvim_set_keymap("n", "<leader>cdp", ":DebugProject<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>crp", ":RunProject<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>cfu", ":FixUsings<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>cfa", ":FixAll<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>cgd", ":GoToDefinition<CR>", { noremap = true, silent = true })
  end,
}
