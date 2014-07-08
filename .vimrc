" http://vim.wikia.com/wiki/Indenting_source_code
set tabstop=4
set shiftwidth=4
set expandtab
set number
set incsearch 
set hlsearch
" case-insensitive when search terms contain all lower-case characters
set smartcase
" se guioptions=agim
" se guioptions-=e
set guioptions-=T  "remove toolbar
set backspace=indent,eol,start

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
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
" colorscheme solarized
colorscheme molokai 

" font
set guifont=Inconsolata\ 13

" for syntastic
" let g:syntastic_matlab_checkers = ['mlint']

" for vim-easymotion 
" let g:EasyMotion_leader_key = '\' 
" nmap s <Plug>(easymotion-s)
nmap t <Plug>(easymotion-s2)

" JK motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

set colorcolumn=80

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

" for vim-session
let g:session_autosave_periodic=10
let g:session_autosave="prompt"
let g:session_autoload="no"

