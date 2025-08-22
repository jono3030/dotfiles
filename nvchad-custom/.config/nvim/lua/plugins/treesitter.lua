-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "python"
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    },
  },
}
