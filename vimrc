syntax on
set t_Co=256
colorscheme kalisi

set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start " Enable backspace
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
" turn absolute line numbers on
"set number
"set nu

" turn absolute line numbers off
"set nonumber
"set nonu

" toggle absolute line numbers
"set number!
"set nu!

" turn relative line numbers on
"set relativenumber
"set rnu

" turn relative line numbers off
"set norelativenumber
"set nornu

" toggle relative line numbers
"set relativenumber!
"set rnu!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" 在Vim的編輯視窗中樹狀顯示檔案目錄[The-NERD-tree]
Plugin 'The-NERD-tree'
""""""""""""""""""""""""""""""""""
" The-NERD-tree配置
""""""""""""""""""""""""""""""""""
" 不顯示緩衝檔案，中間檔案
let NERDTreeIgnore=[ '.pyc$', '.pyo$', '.obj$', '.o$', '.so$', '.egg$', '^.git$', '^.svn$', '^.hg$' ]
" 只剩一個NERDTree視窗時退出vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" <F9>開啟/關閉檔案管理器
" nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
" move among buffers with CTRL
map <C-p> :bnext<CR>
map <C-n> :bprev<CR>
map <C-q> :bd<CR>



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
