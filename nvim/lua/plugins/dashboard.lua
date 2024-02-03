return {
  'MeanderingProgrammer/dashboard.nvim',
  enabled = false,
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    { 'MaximilianLloyd/ascii.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },
  },
  config = function()
    require('dashboard').setup({
      header = require('ascii').art.text.neovim.sharp,
      date_format = '%Y-%m-%d %H:%M:%S',
      directories = {
        '~/Documents/resources/dev-environment',
        '~/Documents/Workspaces/devops',
        '~/Documents/Workspaces/devops/helm-chart',
        '~/Documents/Workspaces/devops/k8s-manifests',
        '~/Documents/Workspaces/devops/terraforms',
        '~/Library/Mobile Documents/iCloud~md~obsidian/',
      },
      highlight_groups = {
        header = 'Constant',
        icon = 'Type',
        directory = 'Delimiter',
        hotkey = 'Statement',
      },
    })
  end,
}
