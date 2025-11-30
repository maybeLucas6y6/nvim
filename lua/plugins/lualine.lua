return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = "catppuccin",
      component_separators = "|",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_c = {
        {
          "navic",
          color_correction = "dynamic"
        },
      },
      lualine_x = {
        -- "encoding",
        -- "fileformat",
        "filetype"
      },
      lualine_y = { "diagnostics" },
      lualine_z = { "progress", "location" }
    },
  }
}
