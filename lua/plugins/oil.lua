function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

local detail = false

return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  opts = {
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ["q"] = {
        "actions.close",
        opts = { noremap = true, silent = true, desc = "Close oil" }
      },
      ["gd"] = {
        desc = "Toggle file detail view",
        callback = function()
          detail = not detail
          if detail then
            require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
          else
            require("oil").set_columns({ "icon" })
          end
        end,
      },
    },
    win_options = {
      winbar = "%!v:lua.get_oil_winbar()",
    },
  },
  keys = {
    {
      mode = { "n" },
      "<leader>e",
      vim.cmd.Oil,
      noremap = true,
      silent = true,
      desc = "Open Oil file explorer"
    },
  },
}
