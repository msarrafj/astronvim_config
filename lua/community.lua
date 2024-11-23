-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.json" },
  -- import/override with your plugins folder
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.terminal-integration.vim-tmux-navigator" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
}
