return {
  "romgrk/barbar.nvim",
  dependencies = {
    -- "lewis6991/gitsigns.nvim",         -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons",     -- OPTIONAL: for file icons
  },
  event = "BufAdd",
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    animation = false,
    auto_hide = false,
  },
  version = "^1.0.0",   -- optional: only update when a new 1.x version is released
  keys = {
    { mode = { "n" }, "<A-,>", vim.cmd.BufferPrevious,     noremap = true, silent = true, desc = "Switch to previous buffer" },
    { mode = { "n" }, "<A-.>", vim.cmd.BufferNext,         noremap = true, silent = true, desc = "Switch to next buffer" },
    { mode = { "n" }, "H",     vim.cmd.BufferMovePrevious, noremap = true, silent = true, desc = "Move buffer to left" },
    { mode = { "n" }, "L",     vim.cmd.BufferMoveNext,     noremap = true, silent = true, desc = "Move buffer to right" },
    { mode = { "n" }, "<A-c>", vim.cmd.BufferClose,        noremap = true, silent = true, desc = "Close current buffer" },
  }
}
