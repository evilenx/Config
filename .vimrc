set number
set relativenumber
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green


"cursor modo bloque
set guicursor=


call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()


colorscheme jellybeans


let g:highlightedyank_highlight_duration = 500
noremap v 


filetype plugin indent on

set exrc
map  :NERDTreeToggle
autocmd FileType nerdtree setlocal number


autocmd FileType nerdtree setlocal relativenumber

