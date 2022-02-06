" Color and theme
set nocompatible
syntax on
colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1

" General configuration
filetype plugin indent on
set mouse=a
set number
set laststatus=2 ignorecase smartcase hlsearch incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Plugins configuration
set runtimepath^=~/.vim/pack/plugins/ctrlp.vim

" Remap
autocmd FileType go nmap <F1> :NERDTreeToggle<CR> 
autocmd FileType go nmap <F9> :GoDebugBreakpoint<CR>
autocmd FileType go nmap <F10> :GoDebugNext<CR>
autocmd FileType go nmap <F11> :GoDebugStep<CR>
autocmd FileType go nmap <leader>d :GoDef<CR>
autocmd FileType go nmap <leader>r :GoReferrers<CR>
autocmd FileType go let g:go_auto_type_info = 1
nmap <leader>n :bnext<CR>
nmap <leader>p :bprevious<CR>

