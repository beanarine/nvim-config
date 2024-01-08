return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {},
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"c",
				"cpp",
				"bash",
				"go",
				"python",
				"lua",
				"html",
				"javascript",
				"typescript",
				"vim",
				"vimdoc",
				"markdown",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
