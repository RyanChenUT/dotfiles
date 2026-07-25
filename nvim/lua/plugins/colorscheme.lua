return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
    },
  },
  {
    "morhetz/gruvbox",
    name = "gruvbox",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_contrast_dark = "hard"
    end,
  },
}
