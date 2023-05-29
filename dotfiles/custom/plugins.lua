local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "pyright",
        "flake8",
        "black",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
     config = function()
       require "custom.configs.null-ls"
     end,
   },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function ()
      require("custom.configs.symbols-outline")
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = 'nvim-lua/plenary.nvim',
    lazy = false,
    config = function ()
      require("custom.configs.todo-comments")
    end
  }
}

return plugins