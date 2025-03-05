-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.diagnostics.error-lens-nvim" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.neovim-lua-development.lazydev-nvim" },
  -- import/override with your plugins folder
}
