-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "echasnovski/mini.icons",
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        filter = "pro",
      }
    end,
  },
  {
    "arnaupv/nvim-devcontainer-cli",
    opts = {
      -- By default, if no extra config is added, following nvim_dotfiles are
      -- installed: "https://github.com/LazyVim/starter"
      -- This is an example for configuring other nvim_dotfiles inside the docker container
      nvim_dotfiles_repo = "https://github.com/upnt/devcontainer-dotfiles.git",
      nvim_dotfiles_install_command = "cd ~/nvim_dotfiles/ && ./install.sh",
      -- In case you want to change the way the devenvironment is setup, you can also provide your own setup
      -- setup_environment_repo = "https://github.com/upnt/setup-environment",
      -- setup_environment_install_command = "./install.sh -p 'nvim stow zsh'",
    },
    keys = {
      {
        "<leader>tu",
        ":DevcontainerUp<cr>",
        desc = "Up the DevContainer",
      },
      {
        "<leader>tc",
        ":DevcontainerConnect<cr>",
        desc = "Connect to DevContainer",
      },
    },
  },

  -- == Examples of Overriding Plugins ==

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },
}
