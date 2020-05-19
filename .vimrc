set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'ajh17/VimCompletesMe'
Plug 'vim-latex/vim-latex'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-session'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

let g:indent_guides_enable_on_vim_startup = 1

"let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:mapleader='\'

filetype plugin indent on    " required
syntax on

" http://vim.wikia.com/wiki/Indenting_source_code
let g:NERDTreeWinSize=29
let g:NERDTreeIgnore = ['__pycache__']
"
" disable annoying beep sound
set noeb vb t_vb=
autocmd FileType vim let b:vcm_tab_complete = 'vim'
set tabstop=4
set shiftwidth=4
set expandtab
set number
set incsearch 
set hlsearch
" case-insensitive when search terms contain all lower-case characters
set smartcase
set smartindent
" se guioptions=agim
" se guioptions-=e
set guioptions-=T  "remove toolbar
set backspace=indent,eol,start

" do not use smartindent with Pyhon. Typing # at the beginning of the line
" removes all the indentation in the line.
au! FileType python setl nosmartindent
" remove menu bar in gvim
:set guioptions-=m  


" auto reload .vimrc when there is a change
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" show break with the arrow
set showbreak=↪

" for solarized theme
syntax enable
" if has('gui_running')
"     " set background=dark
"     set background=dark
" else
"     set background=light
" endif
"colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

let g:tagbar_width=27

"color summerfruit256
"set t_Co=256   " This is may or may not needed.
"colorscheme PaperColor
"colorscheme one
"colorscheme gruvbox
colorscheme dracula
"colorscheme onedark
"colorscheme palenight
"colorscheme OceanicNext
"
"
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme

" Vim
"let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_enabled = 0
"let ayucolor="dark"   " for dark version of theme

"colorscheme ayu
"colorscheme github
"colorscheme github

" specific to gruvbox theme
"https://github.com/morhetz/gruvbox/wiki/Configuration
set background=dark
"let g:gruvbox_contrast_dark="soft"
let g:gruvbox_contrast_dark="soft"
let g:gruvbox_contrast_light="hard"
"let g:gruvbox_improved_strings=1
"let g:gruvbox_improved_warnings=1
" -- end of gruvbox config --

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

" font
set guifont=Inconsolata\ 14
"set guifont=Monospace\ 10
"set guifont=Monaco\ 10
"set guifont=Courier\ Primal\ 11
"set guifont=Menlo\ 10

" for syntastic
" let g:syntastic_matlab_checkers = ['mlint']
"let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_checkers = ['pyflakes']

" For syntastic plugin
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for vim-easymotion 
" let g:EasyMotion_leader_key = '\' 
"
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" nmap s <Plug>(easymotion-s)
"nmap t <Plug>(easymotion-s2)

" JK motions
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader> <Plug>(easymotion-prefix)

set colorcolumn=80

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

" for vim-session
" autosave period in minutes
let g:session_autosave_periodic=15
let g:session_autosave="prompt"
let g:session_autoload="no"


"" Contextual code actions (requires CtrlP)
"nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
"" Run code actions with text selected in visual mode to extract method
"vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>


" For CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.mat     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|img_align_celeba$'
" Make CtrlP ignore files in .gitignore to make it load faster.
"https://medium.com/a-tiny-piece-of-vim/making-ctrlp-vim-load-100x-faster-7a722fae7df6
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" vim-latex (latex suite)
" See: http://vim-latex.sourceforge.net/documentation/latex-suite/customizing-what-to-fold.html
autocmd FileType tex setlocal nofoldenable
autocmd FileType tex setlocal autoread
let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_FoldedSections=""
"let g:Tex_FoldedEnvironments=""
"let g:Tex_FoldedMisc=""
let g:Tex_GotoError=0 
let g:Tex_FoldedSections=""
let g:Tex_FoldedEnvironments=""
let g:Tex_FoldedMisc=""

" http://tex.stackexchange.com/questions/150770/how-to-make-vim-short-key-for-xelatex-and-pdflatex-both
function SetXeTex()
    let g:Tex_CompileRule_pdf = 'xelatex -aux-directory=/tmp --synctex=-1 -src-specials -interaction=nonstopmode $*'
endfunction
map <Leader>lx :<C-U>call SetXeTex()<CR>


" Use neocomplete.
" https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
