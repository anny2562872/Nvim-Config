local glance = require("glance")

glance.setup {
  height = 25,
  border = {
    enable = true,
  },
}

vim.keymap.set("n", "<Leader>gd", "<cmd>Glance definitions<cr>")
vim.keymap.set("n", "<Leader>gr", "<cmd>Glance references<cr>")
vim.keymap.set("n", "<Leader>gi", "<cmd>Glance implementations<cr>")
