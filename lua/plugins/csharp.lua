return {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    -- "williamboman/mason.nvim",
    "Tastyep/structlog.nvim",
  },
  config = function()
    -- require("mason").setup()

    require("csharp").setup({
      lsp = {
        -- When set to false, csharp.nvim won't launch omnisharp automatically.
        enable = true,
        -- When set, csharp.nvim won't install omnisharp automatically. Instead, the omnisharp instance in the cmd_path will be used.
        cmd_path = nil,
        -- The default timeout when communicating with omnisharp
        default_timeout = 1000,
        -- Settings that'll be passed to the omnisharp server
        enable_editor_config_support = true,
        organize_imports = true,
        load_projects_on_demand = false,
        enable_analyzers_support = true,
        enable_import_completion = true,
        include_prerelease_sdks = true,
        analyze_open_documents_only = false,
        enable_package_auto_restore = true,
        -- Launches omnisharp in debug mode
        debug = false,
        -- The capabilities to pass to the omnisharp server
        capabilities = nil,
        -- on_attach function that'll be called when the LSP is attached to a buffer
        on_attach = nil,
      },
      logging = {
        -- The minimum log level.
        level = "INFO",
      },
      dap = {
        -- When set, csharp.nvim won't launch install and debugger automatically. Instead, it'll use the debug adapter specified.
        --- @type string?
        adapter_name = nil,
      },
    })

    -- local csharp = require("csharp")

    -- vim.api.nvim_create_user_command("DebugProject", function()
    --   vim.notify("DebugProject command executed")
    --   csharp.debug_project()
    -- end, {})

    -- vim.api.nvim_create_user_command("RunProject", function()
    --   vim.notify("RunProject command executed")
    --   csharp.run_project()
    -- end, {})

    -- vim.api.nvim_create_user_command("FixUsings", function()
    --   vim.notify("FixUsings command executed")
    --   csharp.fix_usings()
    -- end, {})

    -- vim.api.nvim_create_user_command("FixAll", function()
    --   vim.notify("FixAll command executed")
    --   csharp.fix_all()
    -- end, {})

    -- vim.api.nvim_create_user_command("GoToDefinition", function()
    --   vim.notify("GoToDefinition command executed")
    --   csharp.go_to_definition()
    -- end, {})

    -- -- Adicionando keymaps
    -- vim.api.nvim_set_keymap("n", "<leader>cdp", ":DebugProject<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap("n", "<leader>crp", ":RunProject<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap("n", "<leader>cfu", ":FixUsings<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap("n", "<leader>cfa", ":FixAll<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_set_keymap("n", "<leader>cgd", ":GoToDefinition<CR>", { noremap = true, silent = true })
  end,
}
