return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        },
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        local telescopeConfig = require("telescope.config")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true, desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fw", builtin.grep_string, { noremap = true, silent = true, desc = "Telescope word under cursor" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true, desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, silent = true, desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fG", builtin.git_files, { noremap = true, silent = true, desc = "Telescope git files" })
        vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { noremap = true, silent = true, desc = "Telescope symbol references" })
        vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { noremap = true, silent = true, desc = "Telescope buffer's symbols" })
        vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols, { noremap = true, silent = true, desc = "Telescope workspace's symbols" })
        vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, { noremap = true, silent = true, desc = "Goto or telescope word's implementation" })
        vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, { noremap = true, silent = true, desc = "Goto or telescope word's definition" })
        vim.keymap.set("n", "<leader>ft", builtin.lsp_type_definitions, { noremap = true, silent = true, desc = "Goto or telescope word's type definition" })
        vim.keymap.set("n", "<leader>fD", builtin.diagnostics, { noremap = true, silent = true, desc = "Telescope buffer diagnostics" })

        -- Clone the default Telescope configuration
        local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

        -- I want to search in hidden/dot files.
        table.insert(vimgrep_arguments, "--hidden")
        -- I don't want to search in the `.git` directory.
        table.insert(vimgrep_arguments, "--glob")
        table.insert(vimgrep_arguments, "!**/.git/*")

        telescope.setup({
            defaults = {
                vimgrep_arguments = vimgrep_arguments,
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                }
            }
        })

        telescope.load_extension("ui-select")
        telescope.load_extension("fzf")
    end,
}
