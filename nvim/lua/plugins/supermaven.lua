return {
  'supermaven-inc/supermaven-nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('supermaven-nvim').setup {}
  end,
}
