local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
}
return plugins
