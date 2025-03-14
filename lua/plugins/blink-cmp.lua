return {
    "saghen/blink.cmp",
    version = "*",
    opts = {
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-e: Hide menu
        -- C-k: Toggle signature help
        keymap = { preset = "super-tab" },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono"
        },

        signature = { enabled = true },
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
}
