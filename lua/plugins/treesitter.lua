-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "all",
    },
    highlight = {
      additional_vim_regex_highlighting = true,
    },
  },
}
