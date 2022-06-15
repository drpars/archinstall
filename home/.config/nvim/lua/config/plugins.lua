-- Install your plugins here
return require("packer").startup(function(use)

  -- My plugins here
  use { "wbthomason/packer.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use {
    "windwp/nvim-autopairs",
    config = "require('core.autopairs')",
    after = "nvim-cmp"
  }
  -- use { "terrortylor/nvim-comment", config = "require('core.comment')" }
  use {
    "numToStr/Comment.nvim",
    event = "BufRead",
    ---@diagnostic disable-next-line: duplicate-index
    config = function() require('Comment').setup() end,
    ---@diagnostic disable-next-line: duplicate-index
    config = "require('core.comment')"
  }
  use { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufReadPost" }
  use "kyazdani42/nvim-web-devicons"
  use {
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" },
    cmd = "NvimTreeToggle",
    config = "require('core.nvim-tree')"
  }
  use {
    "akinsho/bufferline.nvim",
    tag = "*",
    requires = "kyazdani42/nvim-web-devicons",
    event = "BufWinEnter",
    config = "require('core.bufferline')"
  }
  use { "akinsho/toggleterm.nvim", config = "require('core.toggleterm')" }
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = "require('core.blankline')",
    event = "BufRead"
  }
  use {
    "folke/which-key.nvim",
    event = "BufWinEnter",
    config = "require('core.whichkey')"
  }
  use { "folke/twilight.nvim", config = "require('core.twilight')" }
  use { "folke/zen-mode.nvim", config = 'require("core.zen-mode")' }

  -- Themes
  use { "EdenEast/nightfox.nvim" }
  use { "rose-pine/neovim" }
  use { "lunarvim/onedarker.nvim" }
  use {
    "tamton-aquib/staline.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    event = "BufRead",
    config = "require('core.staline')"
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = "require('core.colorizer')",
    event = "BufRead"
  }
  -- use { "glepnir/dashboard-nvim", config = 'require("core.dashboard")' }
  use {
    "goolord/alpha-nvim",
    config = function()
      require 'alpha'.setup(require 'core.dashboard'.config)
    end
  }

  -- cmp plugins
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "saadparwaiz1/cmp_luasnip" }

  -- LSP
  use { "neovim/nvim-lspconfig", config = "require('lsp')" }
  use { "williamboman/nvim-lsp-installer" }
  use { "jose-elias-alvarez/null-ls.nvim", config = "require('lsp')" }
  use { "onsails/lspkind-nvim" }
  use { "tami5/lspsaga.nvim", config = "require('lsp')" }
  use { "hrsh7th/vim-vsnip" }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    cmd = "Telescope",
    config = "require('core.telescope')"
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('core.treesitter')"
  }
  use {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    after = "nvim-treesitter"
  }
  use { "p00f/nvim-ts-rainbow", after = "nvim-treesitter" }

  -- Git
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup({ current_line_blame = true })
    end
  }
  -- snippets
  use { "L3MON4D3/LuaSnip" } -- snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
end)
