return {
    "numToStr/Navigator.nvim",
    lazy = false,
    keys = {
        { mode = { "n", "t" }, "<C-h>", vim.cmd.NavigatorLeft,  noremap = true, silent = true, desc = "Navigator left to mux" },
        { mode = { "n", "t" }, "<C-l>", vim.cmd.NavigatorRight, noremap = true, silent = true, desc = "Navigator right to mux" },
        { mode = { "n", "t" }, "<C-k>", vim.cmd.NavigatorUp,    noremap = true, silent = true, desc = "Navigator up to mux" },
        { mode = { "n", "t" }, "<C-j>", vim.cmd.NavigatorDown,  noremap = true, silent = true, desc = "Navigator down to mux" },
    },
    config = function()
        require("Navigator").setup()
    end
}
