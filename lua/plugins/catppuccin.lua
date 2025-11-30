return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        barbar = true,
        navic = {
          enabled = true,
          custom_bg = "NONE", -- "lualine" will set background to mantle
        },
        blink_cmp = {
          style = "bordered",
        },
        fidget = true,
        telescope = {
          enabled = true,
        },
        mason = true,
        which_key = true,
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
