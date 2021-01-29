" save in ~/.vimrc or ~/.vim/vimrc and run the following two lines
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall

" required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" theme
" Plugin 'fatih/molokai'
Plugin 'morhetz/gruvbox'

" ligne du bas
Plugin 'itchyny/lightline.vim'

" commentaire automatique
Plugin 'tpope/vim-commentary'

call vundle#end()


" activation des couleurs
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

" settings
filetype on
filetype plugin on
filetype indent on

" makes backspace sane
set backspace=indent,eol,start

" mouse support
set mouse=a

" indentation
set tabstop=4
set shiftwidth=4

set noerrorbells
set novisualbell
set number
set autoindent

" split
set splitbelow
set splitright


" status line
set laststatus=2 " always show the status line
set showcmd

" drop message d'accueil
set shortmess=I

" encoding
set encoding=utf-8
set fileencoding=utf-8
