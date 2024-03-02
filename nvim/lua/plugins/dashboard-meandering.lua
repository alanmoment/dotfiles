return {
  'MeanderingProgrammer/dashboard.nvim',
  enabled = true,
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    { 'MaximilianLloyd/ascii.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },
  },
  config = function()
    require('dashboard').setup({
      header = require('ascii').art.text.neovim.sharp,
      -- header = require('ascii').get_random_global(),
      date_format = '%Y-%m-%d %H:%M:%S',
      directories = {
        '~/Documents/resources/dotfiles',
        '~/Documents/Workspaces/devops',
        '~/Documents/Workspaces/devops/docs',
        '~/Documents/Workspaces/devops/helm-chart',
        '~/Documents/Workspaces/devops/k8s-manifests',
        '~/Documents/Workspaces/devops/terraforms',
      },
      highlight_groups = {
        header = 'Constant',
        icon = 'Type',
        directory = 'Delimiter',
        hotkey = 'Statement',
      },
      footer = {},
    })
  end,
}
