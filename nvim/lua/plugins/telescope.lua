return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
    cmd = "Telescope",
    --[[ opts = {
      defaults = {
        preview = {
          treesitter = { enable = false },
        },
      },
    },]]
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
      {
        "<leader>ct",
        function()
          require("telescope.builtin").colorscheme({ enable_preview = true })
        end,
        desc = "Switch Colorscheme (preview)",
      },
    },
  },
}
