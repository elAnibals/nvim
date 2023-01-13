local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
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
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Pluggins
return packer.startup(function(use)
  use "wbthomason/packer.nvim"          -- plugin manager

  --performance
  use "lewis6991/impatient.nvim"        --better performance 
  
  --init menu
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}

  -- themes
  use 'navarasu/onedark.nvim'
  use 'projekt0n/github-nvim-theme'
  use "yorik1984/newpaper.nvim"

  --visual utilities
  use {                                 --Parser and better highlight
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use "lukas-reineke/indent-blankline.nvim"--indent line
  use "nvim-lua/popup.nvim"             -- Popup window for packer an another
  use "kyazdani42/nvim-web-devicons"    --icon management
  use "nvim-lualine/lualine.nvim"       --info and status line 
  use "norcalli/nvim-colorizer.lua"     --visualization color tool

  --navigation files tools
  use "akinsho/bufferline.nvim"         --line of all buffers
  use {                                 --file tree
    'kyazdani42/nvim-tree.lua',
    requires = {
    'kyazdani42/nvim-web-devicons', 
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "nvim-telescope/telescope-media-files.nvim"
  

  --autocompletition
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "windwp/nvim-autopairs" -- autocomplete (){} "" etc
  
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  

  use "nvim-lua/plenary.nvim"            --dont remember what this does

  --git Integration
  use "lewis6991/gitsigns.nvim"



  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
