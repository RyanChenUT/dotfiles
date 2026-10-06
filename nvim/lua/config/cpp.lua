-- C/C++ diagnostics, clang-tidy checks, and clang-format via clangd.
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("CppLsp", { clear = true }),
  pattern = { "c", "cpp" },
  callback = function(args)
    if vim.fn.executable("clangd") == 0 then
      return
    end

    vim.lsp.start({
      name = "clangd",
      cmd = { "clangd", "--background-index", "--clang-tidy" },
      root_dir = vim.fs.root(args.buf, {
        ".clangd", "compile_commands.json", "compile_flags.txt", ".git",
      }) or vim.fs.dirname(vim.api.nvim_buf_get_name(args.buf)) or vim.fn.getcwd(),
    })

    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ name = "clangd", bufnr = args.buf, timeout_ms = 3000 })
    end, { buffer = args.buf, desc = "Format C/C++" })
  end,
})
