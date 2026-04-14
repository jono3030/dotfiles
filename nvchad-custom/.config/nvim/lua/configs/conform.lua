require("conform").setup({
  -- formatters_by_ft = {
  --   lua = { "stylua" },
  --   python = { "ruff_format" },
  --   sh = { "shfmt" },
  --   -- css = { "prettier" },
  --   -- html = { "prettier" },
  -- },
  formatters_by_ft = {
  lua = { "stylua" },
  python = { "ruff_format" },
  sh = { "shfmt" },
  zig = { "zigfmt" },
  c = { "clang_format" },
  cpp = { "clang_format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
