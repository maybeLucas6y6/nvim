return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "saghen/blink.cmp",
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd" }
        })
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({ capabilities = capabilities })
            end,
            ["rust_analyzer"] = function() end, -- for rustaceanvim
        })
    end,
}
