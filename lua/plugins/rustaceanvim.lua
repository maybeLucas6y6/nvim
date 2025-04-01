local base_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities(base_capabilities)

vim.g.rustaceanvim = {
    server = {
        on_attach = function(client, bufnr)
            if client.server_capabilities.documentSymbolProvider then
                require("nvim-navic").attach(client, bufnr)
            end
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
