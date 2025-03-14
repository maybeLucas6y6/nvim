return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")

        require("mason-lspconfig").setup()
        require("mason-lspconfig").setup_handlers({
            function (server_name)
                lspconfig[server_name].setup({})
            end,
        })
    end,
}
