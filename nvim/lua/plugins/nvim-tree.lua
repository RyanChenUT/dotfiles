return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Requires a Nerd Font for file icons
  },
  keys = {
    { "<leader>tr", "<cmd>NvimTreeToggle<CR>"},
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
