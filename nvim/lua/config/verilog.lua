-- Verilog/SystemVerilog live lint via verible-verilog-ls.
-- Uses the built-in LSP client directly (vim.lsp.start) instead of
-- nvim-lspconfig, since nvim-lspconfig now requires Neovim >= 0.10
-- and this setup is on 0.9.5.
-- Keep the visual warning markers, but show diagnostic details only on demand
-- via <leader>e.
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "verilog", "systemverilog" },
  callback = function(args)
    if vim.fn.executable("verible-verilog-ls") == 0 then
      return
    end
    vim.lsp.start({
      name = "verible-verilog-ls",
      cmd = { "verible-verilog-ls", "--rules_config_search" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ ".git", ".rules.verible_lint" }, { path = vim.api.nvim_buf_get_name(args.buf), upward = true })[1]
      ) or vim.fn.getcwd(),
    })
  end,
})
