return {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-e: Hide menu
        -- C-k: Toggle signature help
        keymap = { preset = "super-tab" },
        appearance = {
            nerd_font_variant = "mono"
        },
        sources = {
            default = { "lsp", "path", },
        },
        signature = { enabled = true },
        completion = { documentation = { auto_show = true } },
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
}
