" Config by Solomon Thatcher
" github.com/superwafflekitty

" [Initializes Vundle Plugin Manager]
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" [Installed Plugins]
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'kjwon15/vim-transparent'
Plugin 'lervag/vimtex'


" [Calls Vundle Plugins]
call vundle#end()            " required
filetype plugin indent on    " required

" [Vim Theme Configuration]
set t_Co=256
set background=dark
colorscheme dark-meadow
set termguicolors     " enable true colors support
syntax on

" [Opens NERDtree on startup]
autocmd VimEnter * NERDTree | wincmd p

" [Change window via tab]
map <Tab> <C-W>w

" [Page Formating]
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" [Auto Complete Formatting]
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha

