return {
  -- alias nvim='nvim -c ":KanagawaCompile"'
  -- 在 zshrc 有修改 nvim ，因為需要在一開始就先執行 KanagawaCompile
  'rebelot/kanagawa.nvim',
  enabled = false,
  lazy = false,
  config = function()
    -- Default options
    require('kanagawa').setup({
      compile = false,  -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,   -- do not set background color
      dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = {             -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave",    -- Load "wave" theme when 'background' option is not set
      background = {     -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus"
      },
    })
  end,

  -- setup must be called before loading
  -- vim.cmd("colorscheme kanagawa-wave")
  -- vim.cmd("colorscheme kanagawa-dragon")
  -- vim.cmd("colorscheme kanagawa-lotus")
}
