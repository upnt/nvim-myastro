-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      colorscheme = "monokai-pro",
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        astrodark = { -- a table of overrides/changes when applying the astrotheme theme
          -- Normal = { bg = "#000000" },
        },
      },
      -- Icons can be configured throughout the interface
      icons = {
        -- configure the loading of the lsp in the status line
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",
      },
    },
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        transparent_background = true,
        devicons = true,
        filter = "machine",
        inc_search = "background",
        background_clear = {
          "toggleterm",
          "telescope",
          "which-key",
          "renamer",
          -- "notify",
          "neo-tree",
          "bufferline",
          "float_win",
          "mason",
          "Lightline",
        },
        plugins = {
          bufferline = {
            underline_selected = true,
            underline_visible = true,
            underline_fill = true,
            bold = true,
          },
          indent_blankline = {
            context_highlight = "pro",
            context_start_underline = true,
          },
        },
      }
    end,
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
      require("material").setup {
        contrast = {
          terminal = true,
          floating_window = true,
          cursorl_ine = true,
          lsp_virtual_text = true,
        },
        styles = {
          comments = { italic = true },
          strings = { underline = true },
          keywords = { bold = true },
          functions = { bold = true, undercurl = true },
        },
        plugins = {
          "dap",
          "gitsigns",
          "indent-blankline",
          "nvim-cmp",
          "nvim-web-devicons",
          "which-key",
          -- "nvim-notify",
        },
        disable = {
          -- background = true,
        },
        lualine_stype = "stealth",
      }
    end,
  },
}
