-- noremap : avoid recursive keybinds
-- silent : prevent echoing

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected row up, updating indentation" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selected row down, updating indentation" })

vim.keymap.set("n", "J", "mzJ`z", { noremap = true, silent = true, desc = "Join with next row but preserve cursor position" })

-- vim.keymap.set("n", "<leader-l>", ":cnext<CR>", { noremap = true, silent = true, desc = "Jump to next location in quickfix list (session level)" })
-- vim.keymap.set("n", "<leader-h>", ":cprev<CR>", { noremap = true, silent = true, desc = "Jump to previous location in quickfix list (session level)" })
-- vim.keymap.set("n", "<leader>k", ":lnext<CR>", { noremap = true, silent = true, desc = "Jump to next location in location list (buffer level)" })
-- vim.keymap.set("n", "<leader>j", ":lprev<CR>", { noremap = true, silent = true, desc = "Jump to previous location in location list (buffer level)" })

-- vim.keymap.set("n", "<leader>k", vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Jump to previous disgnostic" })
-- vim.keymap.set("n", "<leader>j", vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Jump to next disgnostic" })
-- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Get symbol definition" })
-- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { noremap = true, silent = true, desc = "Get symbol references" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "LSP code action" })
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format buffer" })
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Symbol rename" })

vim.keymap.set("v", "p", [["_dP]], { noremap = true, silent = true, desc = "Prevent paste from overriding your paste buffer" })
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { noremap = true, silent = true, desc = "Prevent delete from overriding your paste buffer" })

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>lr", function ()
    vim.opt.wrap = not vim.opt.wrap:get()
end, { noremap = true, silent = true, desc = "Toggle line wrap" })

vim.keymap.set("n", "<leader>ih", function ()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { noremap = true, silent = true, desc = "Toggle inlay hint" })
