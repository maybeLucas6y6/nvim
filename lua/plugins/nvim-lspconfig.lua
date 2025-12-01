return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.inlay_hint.enable(true, nil)

    vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#6c7086" })

    -- For <= WARN, show only virtual text on current line
    -- For ERROR, show only virtual line on current line
    vim.diagnostic.config({
      virtual_text = {
        current_line = true,
        severity = {
          max = vim.diagnostic.severity.WARN,
        }
      },
      virtual_lines = {
        current_line = true,
        severity = {
          min = vim.diagnostic.severity.ERROR,
        }
      },
      signs = {
        severity = {
          min = vim.diagnostic.severity.ERROR,
        }
      }
    })
  end,
}
