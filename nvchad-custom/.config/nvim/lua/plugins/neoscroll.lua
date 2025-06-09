return {
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("configs.neoscroll")  -- This loads your config from configs/neoscroll.lua
    end,
    event = "WinScrolled",  -- Optional: lazy-load when scrolling starts
  }
}
