" http://vim.wikia.com/wiki/Indenting_source_code
set tabstop=4
set shiftwidth=4
set expandtab
set number

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
if has('gui_running')
    " set background=dark
    set background=dark
else
    set background=light
endif
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized

" font
set guifont=Inconsolata\ 12

" for syntastic
" let g:syntastic_matlab_checkers = ['mlint']

