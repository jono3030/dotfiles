-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- ensure_installed = {
      --   "vim", "lua", "vimdoc", "html", "css", "python"
      -- },
      ensure_installed = {
        "vim", "lua", "vimdoc",
        -- "html", "css",
        "python",
        "zig",
        "c",
        "cpp",
        "bash",
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    },
  },
}
