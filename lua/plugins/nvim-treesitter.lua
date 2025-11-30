return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end
}
