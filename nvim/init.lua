vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("config.lazy")
require("config.verilog")
require("config.cpp")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

vim.cmd.colorscheme("bamboo")
vim.keymap.set("i", "<C-z>", "<Esc>:undo<CR>", {desc = "undo"})
vim.keymap.set("i", "<C-y>", "<Esc>:redo<CR>", {desc = "redo"})
vim.keymap.set({'i', 'n'}, "<C-s>", "<Esc>:w<CR>", {desc = "save"})
vim.keymap.set({'i', 'n'}, "<C-q>", "<Esc>:q!", {desc = "force quit"}) 

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

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {
  desc = "Elaborate Warning",
})

vim.opt.clipboard = "unnamedplus"

