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
        mappings = {
          n = {
            ["<C-space>"] = {
              function()
                require("rust-tools").hover_actions.hover_actions()
              end,
              desc = "Show hover actions",
            },
            ["<Leader>a"] = {
              function()
                require("rust-tools").code_action_group.code_action_group()
              end,
              desc = "Code actions",
            },
          }
        }
      },
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" }, -- automatically install lsp
      },
    },
  }