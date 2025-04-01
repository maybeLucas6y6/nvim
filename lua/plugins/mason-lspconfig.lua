return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "saghen/blink.cmp",
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local blink = require("blink.cmp")
        local navic = require("nvim-navic")

        local base_capabilities = vim.lsp.protocol.make_client_capabilities()
        local capabilities = blink.get_lsp_capabilities(base_capabilities)

        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "rust_analyzer", "clangd" }
        })
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                    on_attach = function(client, bufnr)
                        if client.server_capabilities.documentSymbolProvider then
                            navic.attach(client, bufnr)
                        end
                    end,
                })
            end,
            ["rust_analyzer"] = function()
                -- Do NOT call setup (for rustaceanvim)
            end,
        })
    end,
}
