return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = 'catppuccin'
    }
  },
  config = function()
    require('lualine').setup()
  end
}
