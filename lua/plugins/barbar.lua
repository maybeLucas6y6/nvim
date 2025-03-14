return {
    "romgrk/barbar.nvim",
    dependencies = {
        -- TODO
        -- "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = false,
    },
    keys = {
        { mode = { "n" }, "<A-,>", vim.cmd.BufferPrevious,  noremap = true, silent = true, desc = "Switch to previous buffer" },
        { mode = { "n" }, "<A-.>", vim.cmd.BufferNext,  noremap = true, silent = true, desc = "Switch to next buffer" },
        { mode = { "n" }, "<A-<>", vim.cmd.BufferMovePrevious,  noremap = true, silent = true, desc = "Move buffer to left" },
        { mode = { "n" }, "<A->>", vim.cmd.BufferMoveNext,  noremap = true, silent = true, desc = "Move buffer to right" },
        { mode = { "n" }, "<A-c>", vim.cmd.BufferClose,  noremap = true, silent = true, desc = "Close current buffer" },
    }
}
