return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Nightfox colorscheme
  use "EdenEast/nightfox.nvim"

  -- Nvim-tree file explorer
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- Telescope fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }

  -- Lualine status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- Indicator for blank lines
  use "lukas-reineke/indent-blankline.nvim"

  -- Better tab management
  use {
    'romgrk/barbar.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- Easy motion like quick navigation plugin
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
}

  -- Treesitter syntax highlighting
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Rainbow brackets
  use 'p00f/nvim-ts-rainbow'

end)
