return {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    keys = {
        { mode = { "n" }, "<leader>csf", ":Crates show_features_popup<CR>",  noremap = true, silent = true, desc = "Crates see features popup" },
        { mode = { "n" }, "<leader>cff", ":Crates focus_popup<CR>",  noremap = true, silent = true, desc = "Crates focus popup" },
    },
    config = function()
        require("crates").setup({
            lsp = {
                enabled = true,
                actions = true,
                completion = true,
                hover = true,
            },
        })
    end,
}
