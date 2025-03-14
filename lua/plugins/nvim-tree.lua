return {
    "nvim-tree/nvim-tree.lua",
    keys = {
        { mode = { "n" }, "<C-n>", vim.cmd.NvimTreeToggle,  noremap = true, silent = true, desc = "Toggle nvim-tree" },
        { mode = { "n" }, "<Leader>e", vim.cmd.NvimTreeFocus,  noremap = true, silent = true, desc = "Change focus to nvim-tree" },
    },
    config = function()
        require("nvim-tree").setup({
            hijack_cursor = false,
        })
    end,
}
