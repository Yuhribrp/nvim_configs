return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")
    local parsers = require("nvim-treesitter.parsers")

    ts.install({
      "lua", "vim", "vimdoc", "query",
      "ruby", "embedded_template",
      "rust", "toml",
      "go", "gomod", "gosum",
      "javascript", "html", "css", "json",
      "yaml", "markdown", "markdown_inline",
      "bash", "gitcommit", "diff",
    })

    -- equivalente ao antigo auto_install + highlight + indent
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter-setup", { clear = true }),
      callback = function(args)
        local buf = args.buf
        local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
        if not lang or not parsers[lang] then
          return
        end
        ts.install({ lang }):await(function(err)
          if err or not vim.api.nvim_buf_is_valid(buf) then
            return
          end
          if pcall(vim.treesitter.start, buf, lang) then
            vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end)
      end,
    })
  end,
}
