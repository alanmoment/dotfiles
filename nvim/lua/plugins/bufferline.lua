-- -- DISABLE: switch to luatab
return {
  'akinsho/bufferline.nvim',
  enabled = false,
  version = "*",
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup {
      options = {
        mode = 'tabs',
        show_buffer_close_icons = false,
        show_close_icon = false,
        -- separator_style = { '', '' },
        -- indicator = {
        --     style = 'none',
        -- },
        show_duplicate_prefix = false,
        always_show_bufferline = false,
        termguicolors = true,
        toggle_hidden_on_enter = true,
      },
      -- items = {
      --     -- {
      --     --     name = "Tests", -- Mandatory
      --     --     highlight = { underline = true, sp = "blue" }, -- Optional
      --     --     priority = 2, -- determines where it will appear relative to other groups (Optional)
      --     --     icon = "", -- Optional
      --     --     matcher = function(buf) -- Mandatory
      --     --         return buf.filename:match('%_test') or buf.filename:match('%_spec')
      --     --     end,
      --     -- },
      --     {
      --         name = "Docs",
      --         icon = "", -- Optional
      --         highlight = { undercurl = true, sp = "green" },
      --         auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
      --         matcher = function(buf)
      --             return buf.filename:match('%.md')
      --         end,
      --         separator = {     -- Optional
      --             style = require('bufferline.groups').separator.tab
      --         },
      --     }
      -- }
    }
  end
}
