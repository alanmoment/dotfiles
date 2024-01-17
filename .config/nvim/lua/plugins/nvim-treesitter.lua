return {
    'nvim-treesitter/nvim-treesitter',
    enabled = true,
    config = function()
        require('nvim-treesitter.configs').setup {
            auto_install = true, -- auto install the missing parse when enter the buffer
            highlight = {
                enable = true,
                disable = { "groovy", "java" },
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = false,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '+',
                    node_incremental = '+',
                    scope_incremental = false,
                    node_decremental = '_',
                },
            },
        }

        -- user treesitter to provider fold functional
        local opt = vim.opt
        opt.foldmethod = "expr"
        opt.foldexpr = "nvim_treesitter#foldexpr()"
        opt.foldenable = true
        opt.foldlevelstart = 99

        -- enable highlight on F4
        local keymap = vim.keymap.set
        local default_opts = { noremap = true, silent = true }
        keymap("n", "<F4>", ":TSBufToggle highlight<CR>", default_opts)
    end
}
-- return {
--     'nvim-treesitter/nvim-treesitter',
--     enabled = true,
--     dependencies = {
--         'nvim-treesitter/playground',
--     },
--     config = function()
--         local nvim_treesitter = require('nvim-treesitter.configs')
--         nvim_treesitter.setup {
--             playground = {
--                 enable = true,
--                 disable = {},
--                 updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
--                 persist_queries = false, -- Whether the query persists across vim sessions
--                 keybindings = {
--                     toggle_query_editor = 'o',
--                     toggle_hl_groups = 'i',
--                     toggle_injected_languages = 't',
--                     toggle_anonymous_nodes = 'a',
--                     toggle_language_display = 'I',
--                     focus_language = 'f',
--                     unfocus_language = 'F',
--                     update = 'R',
--                     goto_node = '<cr>',
--                     show_help = '?',
--                 },
--             },
--             -- A list of parser names, or "all" (the five listed parsers should always be installed)
--             ensure_installed = {
--                 "lua",
--                 "vim",
--                 "vimdoc",
--                 "query",
--                 "bash",
--                 "dockerfile",
--                 "java",
--                 "json",
--                 "yaml",
--                 "typescript",
--                 "markdown",
--             },
--             -- Install parsers synchronously (only applied to `ensure_installed`)
--             sync_install = false,
--             -- Automatically install missing parsers when entering buffer
--             -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--             auto_install = true,
--             -- List of parsers to ignore installing (or "all")
--             ignore_install = { "javascript" },
--             ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--             -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
--             highlight = {
--                 enable = true,
--                 -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--                 -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--                 -- the name of the parser)
--                 -- list of language that will be disabled
--                 disable = { "groovy", "java" },
--                 -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--                 -- disable = function(lang, buf) local max_filesize = 100 * 1024 -- 100 KB
--                 --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--                 --     if ok and stats and stats.size > max_filesize then
--                 --         return true
--                 --     end
--                 -- end,
--                 -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--                 -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--                 -- Using this option may slow down your editor, and you may see some duplicate highlights.
--                 -- Instead of true it can also be a list of languages
--                 additional_vim_regex_highlighting = false,
--             },
--             indent = {
--                 enable = true
--             }
--         }
--     end,
-- }
