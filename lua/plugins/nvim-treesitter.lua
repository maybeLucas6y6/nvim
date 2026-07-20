vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

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

    -- require("nvim-treesitter.configs").setup({
    --   highlight = {
    --     enable = true,
    --   },
    -- })
  end,
}
