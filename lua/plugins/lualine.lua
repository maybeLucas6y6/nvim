return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = "auto",
      component_separators = "|",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_x = {
        "filetype"
      },
      lualine_y = {},
      lualine_z = { "progress", "location" }
    },
  }
}
