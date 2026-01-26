return {
  "mason-org/mason.nvim",
  opts = {},
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
	},
	config = function ()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"pyright",
			}
		})
	end,
}
