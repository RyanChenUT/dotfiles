vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
require("config.lazy")

vim.cmd.colorscheme("gruvbox")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit"})
vim.keymap.set("n", "<leader><C-w>", ":wq<CR>", { desc = "Save Quit"})

-- number lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.keymap.set({"n", "v"}, "<leader>l", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end)

-- lsp stuff
vim.keymap.set("n", "<F12>", require("telescope.builtin").lsp_definitions, {
  desc = "Go to definition",
})

vim.keymap.set("n", "<S-F12>", vim.lsp.buf.declaration, {
  desc = "Go to declaration",
})

vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {
  desc = "Find references",
})

vim.keymap.set("n", "<leader><C-e>", ":lua vim.diagnostic.open_float()<CR>", {
  desc = "Elaborate Warning",
})
