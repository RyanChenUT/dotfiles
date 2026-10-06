return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    version = false,
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
          "bash",
          "c",
          "cpp",
          "css",
          "git_config",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "tsx",
          "typescript",
          "systemverilog",
          "vim",
          "vimdoc",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          if pcall(vim.treesitter.start) then
            vim.bo.indentexpr =
              "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
