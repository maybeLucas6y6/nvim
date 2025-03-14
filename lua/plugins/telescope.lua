return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-telescope/telescope-ui-select.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        },
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true, desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fw", builtin.grep_string, { noremap = true, silent = true, desc = "Telescope word under cursor" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true, desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, silent = true, desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fG", builtin.git_files, { noremap = true, silent = true, desc = "Telescope git files" })

        require("telescope").load_extension("fzf")
    end,
}
