return {
  'romgrk/barbar.nvim',
  enabled = false,
  dependencies = {
    'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  config = function()
    -- local api = vim.api
    -- vim.g.barbar_auto_setup = false
  end
}
