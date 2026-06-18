require("config.lazy")

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- Enable line numbers in Netrw
vim.o.signcolumn = "yes"

vim.o.ttimeout = true
vim.o.ttimeoutlen = 0
vim.o.timeoutlen = 300

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = true
  end,
})

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)

