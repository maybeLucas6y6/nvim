return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup()

    vim.keymap.set("n", "<Leader>gt", gitsigns.diffthis, { noremap = true, silent = true, desc = "Git diff this" })
    vim.keymap.set("n", "<Leader>gb", gitsigns.toggle_current_line_blame, { noremap = true, silent = true, desc = "Toggle git blame line" })
  end,
}
