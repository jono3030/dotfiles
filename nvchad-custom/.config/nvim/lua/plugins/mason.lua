return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "basedpyright",

        -- Zig
        "zls",

        -- C / C++
        "clangd",

        -- Bash
        "bashls",
      },
      automatic_installation = true,
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- Python
        -- "basedpyright",
        "ruff",

        -- Zig
        -- "zls",

        -- C / C++
        -- "clangd",
        "clang-format",
        "clangtidy",

        -- Bash
        -- "bashls",
        "shellcheck",
        "shfmt",

        -- Lua
        "stylua",
      },
      run_on_start = true,
    },
  },
}
