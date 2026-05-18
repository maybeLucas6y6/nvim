return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "rust",
    })
  end,
}
