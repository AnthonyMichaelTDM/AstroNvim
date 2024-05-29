return {
    "folke/twilight.nvim",
    opts = {
        -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
          dimming = {
            inactive = true,
          },
          context = 0,
          node_context = 2,
          expand = {
            "function",
            "function_definition",
            "function_declaration",
            "method",
            "method_definition",
            "class",
            "class_definition",
            "table",
          },
          exclude = { "zsh", "markdown", "help", "asciidoc", "conf", "sh", "vim", "toml" },
    }
}