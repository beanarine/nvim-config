return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {},
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "c", "lua", "html", "javascript", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
