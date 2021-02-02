execute pathogen#infect()

" general configuration
set nocompatible
syntax on
filetype plugin indent on
set mouse=a
set number
set laststatus=2 ignorecase smartcase hlsearch incsearch

" show existing tab with 4 spaces width
set tabstop=4
" soft tab width
set softtabstop=4
set shiftwidth=4
" 4 spaces tab
set expandtab

autocmd BufNewFile,BufRead *.ezt set filetype=html

" Vanilla key remapping PREVIOUS - NEXT
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" indentation made from visual mode
set smartindent

" NERDTREE
"autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
let NERDTreeShowHidden=1
" Close NERDtree if last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")) | q | endif
:nnoremap <C-t> :NERDTreeToggle<CR> 

" Display Git branch in status bar
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'eslint --'
