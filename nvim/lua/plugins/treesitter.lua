return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter").update():wait(300000)
	end,
	config = function()
		local ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"query",
			"javascript",
			"typescript",
			"tsx",
			"python",
			"rust",
			"go",
			"html",
			"css",
			"json",
			"markdown",
			"markdown_inline",
			"bash",
		}

		require("nvim-treesitter").install(ensure_installed)

		local filetypes = {
			"lua",
			"vim",
			"python",
			"javascript",
			"typescript",
			"typescriptreact",
			"rust",
			"go",
			"c",
			"cpp",
			"java",
			"ruby",
			"php",
			"html",
			"css",
			"scss",
			"json",
			"yaml",
			"toml",
			"markdown",
			"bash",
			"sh",
			"zsh",
		}

		-- Auto-install and enable treesitter features
		vim.api.nvim_create_autocmd("FileType", {
			pattern = filetypes,
			callback = function()
				local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
				if lang then
					local installed = require("nvim-treesitter").get_installed("parsers")
					local is_installed = vim.tbl_contains(installed, lang)

					if not is_installed then
						vim.notify("Installing " .. lang .. " parser...", vim.log.levels.INFO)
						require("nvim-treesitter").install({ lang })
					end

					if pcall(vim.treesitter.language.add, lang) then
						vim.treesitter.start()
						vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
						vim.wo.foldmethod = "expr"
						vim.wo.foldlevel = 99
						vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end
				end
			end,
		})
	end,
}
