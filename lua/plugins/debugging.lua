return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "suketa/nvim-dap-ruby",
    "leoluz/nvim-dap-go",
    "rcarriga/nvim-dap-ui",
    "folke/trouble.nvim",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()
    require("dap-ruby").setup()
    require("dap-go").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end


    -- Old keymaps commented for now
    -- vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    -- vim.keymap.set("n", "<Leader>dc", dap.continue, {})

    -- Nvim DAP
    vim.keymap.set("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
    vim.keymap.set("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
    vim.keymap.set("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
    vim.keymap.set("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
    vim.keymap.set("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
      { desc = "Debugger toggle breakpoint" })
    vim.keymap.set(
      "n",
      "<Leader>dd",
      "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      { desc = "Debugger set conditional breakpoint" }
    )
    vim.keymap.set("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
    vim.keymap.set("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

    -- rustaceanvim
    vim.keymap.set("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
  end,


  -- golang
  vim.keymap.set("n", "<Leader>dgr", function()
    local dap = require("dap")
    local program = vim.fn.input("Path to main.go: ", vim.fn.getcwd() .. "/", "file")
    dap.run({
      type = "go",
      name = "Debug chosen main.go",
      request = "launch",
      program = program,
    })
  end, { desc = "Debug chosen Go main.go" })
}
