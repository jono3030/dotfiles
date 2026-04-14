-- require("lint").linters_by_ft = {
--   python = { "ruff" },
--   sh = { "shellcheck" },
--   c = { "clangtidy" },
--   -- cpp = { "clangtidy" },
--   zig = {}, -- handled by zls
-- }
-- 
-- vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
--
local lint = require("lint")

lint.linters_by_ft = {
  python = { "ruff" },
  sh = { "shellcheck" },
  c = { "clangtidy" },
  cpp = { "clangtidy" },
  zig = {},
}

vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
