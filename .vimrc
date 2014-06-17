" http://vim.wikia.com/wiki/Indenting_source_code
set tabstop=4
set shiftwidth=4
set expandtab
set number
set incsearch 
set hlsearch
" case-insensitive when search terms contain all lower-case characters
set smartcase
se guioptions=agim
se guioptions-=e

" for Vundle 
" -----------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" --------- end Vundle --------------------------

" for Pathogen (plugin manager)
call pathogen#infect()


" auto reload .vimrc when there is a change
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" show break with the arrow
set showbreak=↪

filetype indent on 
filetype plugin on 

" for solarized theme
syntax enable
" if has('gui_running')
"     " set background=dark
"     set background=dark
" else
"     set background=light
" endif
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_contrast="normal"
" let g:solarized_visibility="normal"
" colorscheme solarized

" font
set guifont=Inconsolata\ 12

" for syntastic
" let g:syntastic_matlab_checkers = ['mlint']

