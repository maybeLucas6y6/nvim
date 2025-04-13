local base_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities(base_capabilities)

vim.g.rustaceanvim = {
    server = {
        on_attach = function(client, bufnr)
            if client.server_capabilities.documentSymbolProvider then
                require("nvim-navic").attach(client, bufnr)
            end
            vim.keymap.set("n", "<Leader>rem", ":RustLsp expandMacro<CR>", { noremap = true, silent = true, desc = "RustLsp expand macro recursively" })
            vim.keymap.set("n", "<Leader>rrm", ":RustLsp rebuildProcMacros<CR>", { noremap = true, silent = true, desc = "RustLsp rebuild procedural macros" })
            vim.keymap.set("n", "<Leader>rca", ":RustLsp codeAction<CR>", { noremap = true, silent = true, desc = "RustLsp grouped code action" })
        end,
        default_settings = {
            ["rust-analyzer"] = {
                capabilities = capabilities,
                diagnostic = {
                    -- TODO still doesn't work. -32802
                    -- revert to older rust-analyzer
                    -- :MasonInstall rust-analyzer@2024-10-21
                    -- refreshSupport = false,
                }
            }
        }
    }
}

return {
    "mrcjkb/rustaceanvim",
    version = "^5",
}
