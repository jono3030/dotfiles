return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
    indent = { char = "│", highlight = "IblChar" },
    scope = {
      char = "│",
      highlight = "IblScopeChar",
      show_start = true,  -- underline at scope start
      show_end = false,    -- underline at scope end
      },
    },
    config = function(_, opts)
      vim.api.nvim_set_hl(0, "IblChar", { fg = "#888888" })
      vim.api.nvim_set_hl(0, "IblScopeChar", { fg = "#FFD700", bold = true })
      require("ibl").setup(opts)
    end,
  },
}
