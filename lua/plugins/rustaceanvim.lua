vim.g.rustaceanvim = {
    server = {
        on_attach = function()
            -- TODO i'm not even sure if this works
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            require("lspconfig").rust_analyzer.setup({ capabilities = capabilities })
        end,
        default_settings = {
            ["rust-analyzer"] = {
                diagnostic = {
                    -- TODO still doesn't work. -32802
                    -- revert to older rust-analyzer
                    -- :MasonInstall rust-analyzer@2024-10-21
                    refreshSupport = false,
                }
            }
        }
    }
}

return {
    "mrcjkb/rustaceanvim",
    version = "^5",
}
