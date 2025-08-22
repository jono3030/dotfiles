return {
  {
      "oskarrrrrrr/symbols.nvim",
      cmd = { "Symbols", "SymbolsClose" }, -- loads when you use these commands
      keys = {
        { "<leader>s", "<cmd>Symbols<CR>", mode = "n" },
        { "<leader>S", "<cmd>SymbolsClose<CR>", mode = "n" },
      },
      config = function()
          local r = require("symbols.recipes")
          require("symbols").setup(
              r.DefaultFilters,
              r.AsciiSymbols,
              {
                  sidebar = {
                      -- custom settings here
                      hide_cursor = false,
		      open_direction = "right",
                  }
              }
          )
      end
  },
}
