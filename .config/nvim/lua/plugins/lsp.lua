return {
  {
    "neovim/nvim-lspconfig",
		dependencies = {
			{
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      require("lspconfig").pyright.setup {}
      require("lspconfig").lua_ls.setup {
				settings = {
					lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			}
    end,
  }
}
