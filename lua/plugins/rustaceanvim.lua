vim.api.nvim_create_augroup("FormatRust", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  group = "FormatRust",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.g.rustaceanvim = {
    server = {
        default_settings = {
            ["rust-analyzer"] = {
                check = {
                    command = "clippy",
                },
            }
        }
    }
}

return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  keys = {
    { mode = "n", "<Leader>rem", ":RustLsp expandMacro<CR>", noremap = true, silent = true, desc = "RustLsp expand macro recursively" },
    { mode = "n", "<Leader>rrm", ":RustLsp rebuildProcMacros<CR>", noremap = true, silent = true, desc = "RustLsp rebuild procedural macros" },
    { mode = "n", "<Leader>rca", ":RustLsp codeAction<CR>", noremap = true, silent = true, desc = "RustLsp grouped code action" },
    { mode = "n", "<Leader>rer", ":RustLsp explainError current<CR>", noremap = true, silent = true, desc = "RustLsp explain error on current line" },
    { mode = "n", "<Leader>rrd", ":RustLsp renderDiagnostic current<CR>", noremap = true, silent = true, desc = "RustLsp render diagnostic on current line" },
    { mode = "n", "<Leader>rod", ":RustLsp openDocs<CR>", noremap = true, silent = true, desc = "RustLsp open docs for symbol under cursor" },
  },
}
