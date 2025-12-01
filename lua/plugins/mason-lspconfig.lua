return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      "lua_ls",
      "pylyzer",
    },
    automatic_enable = {
      exclude = {
        "rust_analyzer",
      }
    }
  },
}
