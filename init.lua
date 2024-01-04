vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Declare plugins for Lazy to install and update
local plugins = {
  {"catppuccin/nvim", name = "catppuccin", priority = 1000},
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
}

local opts={}

--require("vim-options")
require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-f>', builtin.find_files, {})
vim.keymap.set('n','<C-g>', builtin.live_grep, {})

require("catppuccin").setup();
vim.cmd.colorscheme "catppuccin";

