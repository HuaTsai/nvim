return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "bash",
        "cpp",
        "python",
        "json",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      conf = require "nvchad.configs.nvimtree"
      conf.filters.git_ignored = false
      return conf
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    event = "InsertEnter",
    config = function()
      require("auto-save").setup {}
    end,
  },

  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.keymap.set("i", "<M-n>", "<Plug>(copilot-next)", {})
      vim.keymap.set("i", "<M-p>", "<Plug>(copilot-previous)", {})
      vim.keymap.set("i", "<M-l>", 'copilot#Accept("\\<CR>")', {
        silent = true,
        expr = true,
        replace_keycodes = false,
      })
      vim.g.copilot_no_tab_map = true
    end,
  },
}
