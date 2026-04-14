-- return {
--   {
--     "mfussenegger/nvim-lint",
--     config = function()
--       require("lint").linters_by_ft = {
--         python = { "ruff" },
-- 	sh = { "shellcheck" },
--       }
--     end,
--   }
-- }
--
-- return {
--   {
--     "mfussenegger/nvim-lint",
--     event = { "BufReadPost", "BufWritePost", "InsertLeave" },
--     config = function()
--       local lint = require("lint")
-- 
--       lint.linters_by_ft = {
--         python = { "ruff" },
--         sh = { "shellcheck" },
--         c = { "clangtidy" },
--         cpp = { "clangtidy" },
--         zig = {},
--       }
-- 
--       -- Auto-run linters
--       vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
--         callback = function()
--           lint.try_lint()
--         end,
--       })
--     end,
--   },
-- }

return {
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost", "InsertLeave" },
    config = function()
      require("configs.nvim-lint")
    end,
  },
}
