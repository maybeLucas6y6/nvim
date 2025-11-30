return {
  "saecki/crates.nvim",
  tag = "stable",
  event = { "BufRead Cargo.toml" },
  keys = {
    { mode = { "n" }, "<leader>csf", ":Crates show_features_popup<CR>", noremap = true, silent = true, desc = "Crates see features popup" },
  },
  opts = {
    lsp = {
      enabled = true,
      actions = true,
      completion = true,
      hover = true,
    },
  }
}
