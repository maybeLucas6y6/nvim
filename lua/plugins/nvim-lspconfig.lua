return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.inlay_hint.enable(true, nil)
        vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#6c7086" })

        local navic = require("nvim-navic")

        local blink = require("blink.cmp")
        -- Servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.txt
        local servers = { "lua_ls", "clangd" }
        local base_capabilities = vim.lsp.protocol.make_client_capabilities()

        local capabilities = blink.get_lsp_capabilities(base_capabilities)

        for _, server_name in ipairs(servers) do
            require("lspconfig")[server_name].setup({
                on_attach = function(client, bufnr)
                    if client.server_capabilities.documentSymbolProvider then
                        navic.attach(client, bufnr)
                    end
                end,
                capabilities = capabilities,
            })
        end
    end,
}
