vim.loader.enable()
require("utils")
require("opts")
local colorscheme = require("colorschemes")
-- installs plugins and customizes them
require("plugins_config")
local function start_godot_server()
  local cwd = vim.fn.getcwd()
  if vim.loop.fs_stat(cwd .. "/project.godot") then
    vim.fn.serverstart(cwd .. "/server.pipe")
  end
end
start_godot_server()


vim.cmd.colorscheme("onedark")
