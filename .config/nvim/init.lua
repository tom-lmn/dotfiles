require("config.lazy")

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- Enable line numbers in Netrw
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = true
  end,
})

