return {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    dependencies = { { "echasnovski/mini.icons", "nvim-tree/nvim-web-devicons" } },
    lazy = false,
    opts = {
        watch_for_changes = true,
        keymaps = {
            ["q"] = { "actions.close", opts = { noremap = true, silent = true, desc = "Close oil" } },
            ["md"] = {
                function()
                    require("oil").set_columns({ "icon", "permission", "size", "mtime" })
                end,
                opts = { noremap = true, silent = true, desc = "Oil more details" }
            },
            ["ld"] = {
                function()
                    require("oil").set_columns({ "icon" })
                end,
                opts = { noremap = true, silent = true, desc = "Oil less details" }
            }
        },
        view_options = {
            show_hidden = true,
        }
    },
    keys = {
        { mode = { "n" }, "<leader>e", vim.cmd.Oil, noremap = true, silent = true, desc = "Open Oil file explorer" },
    }
}
