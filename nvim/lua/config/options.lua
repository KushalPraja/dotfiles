vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.o.number = true -- Line numbers
vim.o.relativenumber = true
vim.o.mouse = "a" -- Enable mouse mode
vim.o.showmode = false

-- Sync clipboard between OS and Neovim
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Tab settings
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true

-- Line wrapping
vim.o.breakindent = true
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = "split"
vim.o.cursorline = true -- Highlight current line
vim.o.scrolloff = 10
vim.o.confirm = true -- Ask for confirmation when closing unsaved files

-- if windows use powershell
--
--
if vim.fn.has("win32") == 1 then
	vim.o.shell = "powershell"
end

if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h12"
	vim.g.neovide_refresh_rate = 60
end
