return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { "lua", "python", "javascript", "html" }, -- specify languages
      highlight = { enable = true },
      indent = { enable = true },  -- optional
      incremental_selection = { enable = true }, -- optional
    }
  end
}

