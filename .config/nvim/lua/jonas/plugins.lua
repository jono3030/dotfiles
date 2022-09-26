local fn = vim.fn

-- Automatically install packer
-- "data" is a variable for ~/.local/share/nvim
-- All Neovim plugins live in de start folder and
-- are pretty much just cloned Github repositories
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
-- If packer isn't installed it will be installed here
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
-- Protected calls prevent entire setup from breaking
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window with rounded border corners
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Plugins here
  -- Packer
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

  -- Colorschemes
  use "EdenEast/nightfox.nvim" -- Nightfox
  use "folke/tokyonight.nvim" -- Tokyo Night
  use 'Mofiqul/dracula.nvim' -- Dracula

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer completions
  use "hrsh7th/cmp-path" -- Path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- Snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- Completions for lsp
  use "hrsh7th/cmp-nvim-lua" -- Useful for Neovim lua configuration

  -- snippets
  use "L3MON4D3/LuaSnip" -- Snippet engine
  use "rafamadriz/friendly-snippets" -- A bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- Enable LSP. Supported by Nvim core maintainers.
  use "williamboman/mason.nvim" -- Language server installer. Replaces nvim-lsp-installer.
  use "williamboman/mason-lspconfig.nvim" -- Used to close some gaps between mason.nvim and lspconfig

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    --run = ":TSUpdate",
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- Rainbow brackets Treesitter extension
  use 'p00f/nvim-ts-rainbow'

  -- Autopairs
  use "windwp/nvim-autopairs" -- Integrates with both cmp and treesitter

  -- indent-blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- Commenting
  use "numToStr/Comment.nvim" -- Commenting plugin
  -- use "JoosepAlviste/nvim-ts-context-commentstring" -- Sets commentstring option i.e. takes care of context aware commenting

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- File explorer and navigation
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
