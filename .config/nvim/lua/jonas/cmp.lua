local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- Scroll through pop-up menu with C-j and C-k
		["<C-j>"] = cmp.mapping.select_next_item(), -- Scroll through pop-up menu with C-j and C-k
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }), -- Scroll through submenu
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }), -- Scroll through submenu
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }), -- Open pop-up menu
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping { -- Closes pop-up menu
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true }, -- Confirm selection and make pop-up diappear
  },
  -- Formatting of pop-up menu
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        nvim_lua = "[NVIM_LUA]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  -- Order of items in pop-up menu
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim-lua" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
  experimental = {
    ghost_text = false, -- Show preview of selection with actual text
    native_menu = false,
  },
}

local ls = require "luasnip"
local types = require "luasnip.util.types"
local keymap = vim.keymap.set

ls.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- <c-j> is the expansion key
  -- This will expand the current item or jump to the next item within the snippet
  keymap({ "i", "s" }, "<c-j>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
end, { silent = true }),

  -- <c-k> is the jump backwards key
  -- This will always move to the previous item within the snippet
  keymap({ "i", "s" }, "<c-k>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true }),

  -- <c-n> is selecting within a list of options
  -- This is useful for choice nodes
  keymap("i", "<c-n>", function()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end),
}
