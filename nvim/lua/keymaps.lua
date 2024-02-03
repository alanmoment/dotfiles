local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- Quit
keymap("n", "<C-q>", ":q!<CR>", default_opts)

-- Jump
keymap("n", "gm", "'M", default_opts)
keymap("n", "m", "mM", default_opts)

-- Fold
keymap("n", "<Space>", "za", default_opts)

-- Tab
keymap("n", "<", ":tabm -1<CR>", default_opts)
keymap("n", ">", ":tabm +1<CR>", default_opts)
keymap("n", "<C-n>", ":tabnext<CR>", default_opts)
keymap("n", "<C-p>", ":tabprev<CR>", default_opts)
keymap("n", "<C-t>", ":tabnew<CR>", default_opts)

-- Functional
keymap("n", "<F5>", ":e!<CR>", default_opts)

-- Panes
keymap("n", "=", "<C-w>=", default_opts)
keymap("n", "-", "<C-w>x", default_opts)
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)
keymap("n", "<S-Right>", ":vertical resize +3<CR>", default_opts)
keymap("n", "<S-Left>", ":vertical resize -3<CR>", default_opts)
keymap("n", "<S-Down>", ":resize -3<CR>", default_opts)
keymap("n", "<S-Up>", ":resize +3<CR>", default_opts)

-- Temporary disable hightlight
keymap("n", "<ESC>", ":noh<CR>", default_opts)
-- Use cp shortcut to copy editing file path
keymap("n", "cp", ":let @+=expand('%:p')<CR>", default_opts)

keymap("n", "<leader>=", "gg0vG$y", default_opts)

-- yank word and paste without override register
keymap("x", "p", "pgvy", default_opts)

-- ESC to exist terminal mode to normal mode
--keymap("t", "<C-q>", [[<C-\><C-n>]], default_opts)
keymap("t", "<leader><ESC>", [[<C-\><C-n>]], default_opts)

-- keymap("n", "<C-d>", ":Telescope neovim-project discover", default_opts)

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>") -- increment
keymap("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap("n", "<C-w>|", "<C-w>v") -- split window vertically
keymap("n", "<C-w>-", "<C-w>s") -- split window horizontally
keymap("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap("n", "<leader>se", "<-w>=") -- make split windows equal width & height
keymap("n", "<leader>sc", ":close<CR>") -- close current split window
-- Tmux window management
-- now can use C-hjkl
-- keymap("n", "<C-w><C-h>", ":TmuxNavigateLeft", default_opts)
-- keymap("n", "<C-w><C-l>", ":TmuxNavigateRight", default_opts)
-- keymap("n", "<C-w><C-j>", ":TmuxNavigateDown", default_opts)
-- keymap("n", "<C-w><C-k>", ":TmuxNavigateUp", default_opts)

-- inc-rename
keymap("n", "<S-r>", ":IncRename ")
