return {
	-- TokyoNight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				light_style = "day",
				transparent = false,
				terminal_colors = true,
				-- Automatically enables integrations for plugins
				plugins = {
					all = true, -- enable all plugin integrations
				},
			})
		end,
	},

	-- Catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = false,
				integrations = {
					telescope = {
						enabled = true,
					},
					neotree = true,
					noice = true,
					notify = true,
					which_key = true,
					mason = true,
					mini = {
						enabled = true,
					},
				},
			})
		end,
	},

	-- Nightfox
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = false,
					terminal_colors = true,
				},
			})
			-- default colorscheme
			vim.cmd.colorscheme("carbonfox")
		end,
	},

	-- One Dark
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "dark", -- dark, darker, cool, deep, warm, warmer
				transparent = false,
				term_colors = true,
				-- Automatically supports Telescope, Neo-tree, and others
			})
		end,
	},

	-- Gruvbox Material
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
			vim.g.gruvbox_material_better_performance = 1
			vim.g.gruvbox_material_enable_italic = 1
			-- Gruvbox Material automatically integrates with plugins
		end,
	},

	-- Rose Pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "moon", -- auto, main, moon, or dawn
				dark_variant = "moon",
				-- Rose Pine automatically includes highlights for:
				-- telescope, neo-tree, noice, notify, and more
			})
		end,
	},
}
