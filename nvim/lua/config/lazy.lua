-- Lazy plugin manager setup
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'plugins.base' }, -- telescope
  { import = 'plugins.ui' },
  { import = 'plugins.editor' },
  { import = 'plugins.lsp' },
  { import = 'plugins.treesitter' }, -- treesitter
  { import = 'plugins.lint' },
  { import = 'plugins.autopairs' },
  { import = 'plugins.neo-tree' },
  { import = 'plugins.nvim-ts-autotag' },
  { import = 'plugins.supermaven' },
  { import = 'plugins.noice' },
  { import = 'plugins.lualine' },
  { import = 'plugins.colorscheme' },
  { import = 'plugins.gitsigns' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
