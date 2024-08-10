-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- language specific plugin packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  -- color plugins (e.g. transparency)
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },
  -- completion plugins
  { import = "astrocommunity.completion.copilot-lua" },
  -- diagnostics plugins
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- general editor plugins
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  -- git plugins
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.octo-nvim" },
  -- keybinding plugins
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },
  -- wakatime
  { import = "astrocommunity.media.vim-wakatime" },
  -- motion plugins
  { import = "astrocommunity.motion.harpoon" },
  -- plugins that make me better at using nvim
  { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- terminal integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  -- testing plugins
  { import = "astrocommunity.test.neotest" },
}
