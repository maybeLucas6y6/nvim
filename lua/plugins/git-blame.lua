return {
    "f-person/git-blame.nvim",
    opts = {
        enabled = false,
        message_template = " <summary> • <date> • <author> • <<sha>>",
        date_format = "%m-%d-%Y %H:%M:%S",
        virtual_text_column = 1,
    },
    keys = {
        { mode = { "n" }, "<Leader>gb", vim.cmd.GitBlameToggle,  noremap = true, silent = true, desc = "Toggle git blame" },
    },
}
