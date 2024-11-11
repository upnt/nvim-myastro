-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "grammarly",
        "jsonls",
        "lua_ls",
        "texlab",
        "pyright",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "beautysh",
        "bibtex-tidy",
        "black",
        "checkmake",
        "clang-format",
        "cmakelang",
        "cpplint",
        "isort",
        "mypy",
        "markdownlint",
        "latexindent",
        "pyproject-flake8",
        "selene",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "bash-debug-adapter",
        "codelldb",
        "cpptools",
        "debugpy",
      },
    },
  },
}
