vim.loader.enable()
require("utils")
require("opts")
require("colorschemes")
-- installs plugins and customizes them
require("plugins_config")

vim.cmd.colorscheme("onedark")
