return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                barbar = true,
                blink_cmp = true,
                which_key = true,
                navic = { enabled = true, custom_bg = "lualine" }
            }
        })
        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}
