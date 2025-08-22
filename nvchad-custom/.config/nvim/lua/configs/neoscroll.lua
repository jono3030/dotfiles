require("neoscroll").setup({
  mappings = {
    "<C-u>", "<C-d>",
    "<C-b>", "<C-f>",
    "<C-y>", "<C-e>",
    "zt", "zz", "zb",
  },
  hide_cursor = true,
  stop_eof = true,
  respect_scrolloff = false,
  cursor_scrolls_alone = false,
  duration_multiplier = .5,
  easing = "linear",
  pre_hook = nil,
  post_hook = nil,
  performance_mode = false,
  ignored_events = {
    "WinScrolled", "CursorMoved",
  },
})
