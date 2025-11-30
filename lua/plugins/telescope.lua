return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>f", builtin.builtin, { noremap = true, silent = true, desc = "Telescope all pickers" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true, desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fw", builtin.grep_string, { noremap = true, silent = true, desc = "Telescope word under cursor" })
    vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, { noremap = true, silent = true, desc = "Goto or telescope word's definition" })
    vim.keymap.set("n", "<leader>ft", builtin.lsp_type_definitions, { noremap = true, silent = true, desc = "Goto or telescope word's type definition" })
    vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { noremap = true, silent = true, desc = "Telescope symbol references" })
    vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, { noremap = true, silent = true, desc = "Goto or telescope word's implementation" })
  end,
}
