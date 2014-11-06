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
set guifont=Inconsolata\ 12
"set guifont=Monospace\ 12
"set guifont=Monaco\ 12

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
" autosave period in minutes
let g:session_autosave_periodic=15
let g:session_autosave="prompt"
let g:session_autoload="no"

"" for Omnisharp 
"augroup omnisharp_commands
   "autocmd!

   ""Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
   "autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

   "" Synchronous build (blocks Vim)
   ""autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
   "" Builds can also run asynchronously with vim-dispatch installed
   "autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
   "autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

   "" Automatically add new cs files to the nearest project on save
   ""autocmd BufWritePost *.cs call OmniSharp#AddToProject()

   ""show type information automatically when the cursor stops moving
   "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

   ""The following commands are contextual, based on the current cursor position.
   "autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
   ""autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
   ""autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
   ""autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
   ""autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
   ""autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr> "finds members in the current buffer

   "" cursor can be anywhere on the line containing an issue 
   ""autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>  
   ""autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
   ""autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
   ""autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
   ""autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr> "navigate up by method/property/field
   ""autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr> "navigate down by method/property/field

"augroup END

"" Contextual code actions (requires CtrlP)
"nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
"" Run code actions with text selected in visual mode to extract method
"vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" YouCompleteMe
" auto-close after selecting a completion string 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" For CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.mat     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
