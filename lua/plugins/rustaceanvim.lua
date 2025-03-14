vim.g.rustaceanvim = {
    server = {
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
