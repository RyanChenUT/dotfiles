return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = "v0.9.3",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
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
          "verilog",
          "vim",
          "vimdoc",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
