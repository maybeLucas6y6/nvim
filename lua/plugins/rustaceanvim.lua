local base_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities(base_capabilities)

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
        on_attach = function(client, bufnr)
            if client.server_capabilities.documentSymbolProvider then
                require("nvim-navic").attach(client, bufnr)
            end
            vim.keymap.set("n", "<Leader>rem", ":RustLsp expandMacro<CR>", { noremap = true, silent = true, desc = "RustLsp expand macro recursively" })
            vim.keymap.set("n", "<Leader>rrm", ":RustLsp rebuildProcMacros<CR>", { noremap = true, silent = true, desc = "RustLsp rebuild procedural macros" })
            vim.keymap.set("n", "<Leader>rca", ":RustLsp codeAction<CR>", { noremap = true, silent = true, desc = "RustLsp grouped code action" })
            vim.keymap.set("n", "<Leader>rer", ":RustLsp explainError current<CR>", { noremap = true, silent = true, desc = "RustLsp explain error on current line" })
            vim.keymap.set("n", "<Leader>rrd", ":RustLsp renderDiagnostic current<CR>", { noremap = true, silent = true, desc = "RustLsp render diagnostic on current line" })
            vim.keymap.set("n", "<Leader>rod", ":RustLsp openDocs<CR>", { noremap = true, silent = true, desc = "RustLsp open docs for symbol under cursor" })
        end,
        default_settings = {
            ["rust-analyzer"] = {
                capabilities = capabilities,
                diagnostic = {
                    -- TODO still doesn't work. -32802
                    -- revert to older rust-analyzer
                    -- :MasonInstall rust-analyzer@2024-10-21
                    -- refreshSupport = false,
                },
                check = {
                    command = "clippy",
                },
            }
        }
    }
}

return {
    "mrcjkb/rustaceanvim",
    version = "^5",
}
