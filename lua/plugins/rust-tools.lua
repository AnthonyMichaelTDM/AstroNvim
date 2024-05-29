-- Set up tools for programming in Rust

return {
    { 
      "simrat39/rust-tools.nvim",-- add lsp plugin
      lazy = true,
      opts = {
        tools = {
          -- options same as lsp hover / vim.lsp.util.open_floating_preview()
          hover_actions = {
            -- whether the hover action window gets automatically focused
            -- default: false
            auto_focus = true,
          },
        }
      },
      config = function(_, opts, bufnr)
        require("rust-tools").setup(opts)
        -- Hover actions
        vim.keymap.set("n", "<C-space>", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", require("rust-tools").code_action_group.code_action_group,
          { buffer = bufnr })
      end,
    }, 
    {
      "AstroNvim/astrolsp",
      ---@type AstroLSPOpts
      opts = {
        setup_handlers = {
          -- add custom handler
          rust_analyzer = function(_, opts)
            require("rust-tools").setup({ server = opts })
          end,
        },
      },
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" }, -- automatically install lsp
      },
    },
  }